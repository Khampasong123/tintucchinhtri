<?php include 'header.php'; ?>
<div id="main-content">
    <div class="container">
        <div class="row">
            <div class="col-md-8">

                <!-- post-container -->
                <div class="post-container">
                    <?php 
                    include 'config.php';//Kết nối đến cơ sở dữ liệu bằng cách import file config.php. เชื่อมต่อกับฐานข้อมูลโดยการนำเข้าไฟล์ config.php
                    $limit = 1; // Đặt giới hạn hiển thị bài viết trên mỗi trang là 3. กำหนดขีดจำกัดการแสดงโพสต์ต่อหน้าเป็น 3
                    if (isset($_GET['page'])) { 
                        $page = $_GET['page'];
                    }else{$page = 1;}
                    $offset = ($page - 1) * $limit; //Kiểm tra xem có tham số "page" trong URL không. Nếu có, gán giá trị của tham số này cho biến $page, ngược lại gán giá trị là 1.
                    $sql = "SELECT post.post_id, post.title, post.description, post.post_date, category.category_name, user.username,post.category,post.post_img,post.author FROM post 
                    LEFT JOIN category ON post.category = category.category_id
                    LEFT JOIN user ON post.author = user.user_id
                    ORDER BY post.post_id DESC LIMIT {$offset},{$limit}";//Tính toán giá trị offset dùng để xác định vị trí bắt đầu lấy dữ liệu từ cơ sở dữ liệu.
                                                                         //Tạo câu truy vấn SQL để lấy thông tin về bài viết, kết hợp thông tin từ các bảng category và user thông qua các liên kết LEFT JOIN.

                    $result = mysqli_query($conn, $sql) or die("Query Failed"); //Thực thi câu truy vấn và lưu kết quả vào biến $result.
                    if (mysqli_num_rows($result) > 0) {
                        while ($row = mysqli_fetch_assoc($result)) { //Nếu có kết quả trả về từ câu truy vấn, sử dụng vòng lặp while để hiển thị thông tin của từng bài viết.


                            ?>
                            <div class="post-content"> 
                            
                                <div class="row">
                                    <div class="col-md-4">
                                        <a class="post-img" href="single.php?id=<?php echo $row['post_id']; ?>"><img src="admin/upload/<?php echo $row['post_img']; ?>" alt=""/></a>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="inner-content clearfix">
                                            <h3><a href="single.php?id=<?php echo $row['post_id']; ?>"><?php echo $row['title']; ?></a></h3>
                                            <div class="post-information">
                                                <span>
                                                    <i class="fa fa-tags" aria-hidden="true"></i>
                                                    <a href='category.php?cid=<?php echo $row['category'];?>'><?php echo $row['category_name']; ?></a>
                                                </span>
                                                <span>
                                                    <i class="fa fa-user" aria-hidden="true"></i>
                                                    <a href='author.php?aid=<?php echo $row['author']; ?>'><?php echo $row['username']; ?></a>
                                                </span>
                                                <span>
                                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                                    <?php echo $row['post_date']; ?>
                                                </span>
                                            </div>
                                            <p class="description">
                                                <?php echo substr($row['description'],0,200). "..."; ?>
                                            </p>
                                            <a class='read-more pull-right' href="single.php?id=<?php echo $row['post_id']; ?>">read more</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php 
                        }
                    }else{
                        echo "<h2> No record found. </h2>";
                    }

                        //đoạn code sau đây được sử dụng để hiển thị phân trang cho danh sách bài viết trên trang index.php dựa trên số lượng bài viết và giới hạn hiển thị trên mỗi trang.
                    $sql1 = "SELECT * from post"; 
                    $result1 = mysqli_query($conn,$sql1) or die("Query Failed"); 
                    if (mysqli_num_rows($result1) >0) { 
                        $total_records = mysqli_num_rows($result1);
                        $total_page = ceil($total_records/$limit);
                        echo "<ul class='pagination admin-pagination'>";
                        if ($page > 1) { 
                            echo "<li> <a href='index.php?page=".($page-1)."'>Prev</a></li>";
                        }

                        for ($i=1; $i<=$total_page ; $i++) { 
                            if ($i== $page) {
                                $active = "active";
                            }else{
                                $active = "";
                            }
                            echo "<li class='". $active."'><a href='index.php?page=".$i."'>".$i."</a></li>";
                        }
                        if ($total_page >$page) {
                            echo "<li> <a href='index.php?page=".($page+1)."'>Next</a></li>"; //
                        }
                        echo "</ul>";
                    }
                    ?>

                </div><!-- /post-container -->
            </div>
            <?php include 'sidebar.php'; ?>
        </div>
    </div>
</div>
<?php include 'footer.php'; ?>
