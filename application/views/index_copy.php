<?php
    $cate_id = $this -> input -> get('cateId');
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
              <link rel="stylesheet" type="text/css" href="css/index.css">
    <base href="<?php echo site_url();?>">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/index.css">
    <script>
        window.addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);
        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
</head>
<body>
<?php include 'header.php';?>
<div id="banner"></div>
<div id="works">
    <div class="wrapper">
        <div class="work-top">
            <h3>Latest Works</h3>
            <ul class="blog-cate">
                <li><a class="<?php echo !$cate_id?'active':'';?>" href="#">All</a></li>
                <?php
                    foreach ($categories as $category) {
                ?>
                        <li><a class="<?php echo $cate_id==$category->cate_id?'active':'';?>" href="welcome/index?cateId=<?php echo $category->cate_id;?>"><?php echo $category->cate_name;?></a></li>
                <?php
                    }
                ?>
            </ul>
        </div>
        <ul class="blog-list">
            <?php
                foreach ($blogs as $blog) {
            ?>
            <li class="blog">
                <a href="#">
                    <img src="<?php echo $blog->img;?>">
                    <div class="blog-desc">
                        <p class="blog-title"><?php echo $blog->title;?></p>
                        <span class="blog-clicked "><?php echo $blog->clicked;?></span>
                    </div>
                    <div class="mask">
                        <h4 class="mask-title">PHOTO</h4>
                        <span class="mask-btn">VIEW PHOTO</span>
                    </div>
                </a>
            </li>
            <?php
                }
            ?>
        </ul>
    </div>
</div>
<div id="services"></div>
<div id="meet"></div>
<div id="footer"></div>
<script src="js/require.js" data-main="js/index"></script>
</body>
</html>