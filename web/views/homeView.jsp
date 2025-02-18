<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<!-- basic -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Spicyo</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- owl css -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- awesome fontfamily -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->

<body class="main-layout">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="images/loading.gif" alt="" /></div>
</div>

<div class="wrapper">
    <!-- end loader -->
    <c:if test = "${user.phanquyen == 1}">
    <div class="sidebar">
        <!-- Sidebar  -->
        <nav id="sidebar">

            <div id="dismiss" style="margin-top: 25px; width: 260px">
                <i class="fa fa-arrow-left"></i>
            </div>

            <ul class="list-unstyled components" style="padding-top: 100px">
                <li >
                    <a href="home">Home</a>
                </li>
                <li class="active">
                    <a href="Admin">Admin</a>
                </li>
                <li>
                    <a href="HoaDon">Hoá đơn</a>
                </li>
                <li>
                    <a href="MonAn">Món Ăn</a>
                </li>
            </ul>

        </nav>
    </div>
    </c:if>

    <div id="content">
        <!-- header -->
        <jsp:include page="_header.jsp"></jsp:include>
        <!-- end header -->
        <!-- start slider section -->

        <div class="slider_section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="full">
                            <c:if test="${not empty errorString }">
                                <div class="error">
                                    <div class="button" >${ errorString }</div>
                                </div>
                            </c:if>
                            <div id="main_slider" class="carousel vert slide" data-ride="carousel" data-interval="5000">
                                    <c:if test="${not empty listMonAn }">
                                        <c:forEach items="${listMonAn}" var="monan">
                                            <div class="carousel-item active">
                                                <div class="row">
                                                    <div class="col-md-5">
                                                        <div class="slider_cont">
                                                            <h3>${monan.tenMonAn}</h3>
                                                            <p>${monan.mota}</p>
                                                            <a class="main_bt_border" href="#" data-idMonAn="${monan.idMonAn}" data-soluong="1" data-dongia="${monan.dongia}" >Order Now</a>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-7 full text_align_center">
                                                        <div class="slider_image">
                                                            <img class="img-responsive" src="${monan.linkImg}" alt="#" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end slider section -->


            <!-- end Our Client -->
            <jsp:include page="_footer.jsp"></jsp:include>
        </div>
    </div>
</div>
<div class="overlay"></div>
<!-- Javascript files-->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>

<script src="js/jquery-3.0.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#sidebar").mCustomScrollbar({
            theme: "minimal"
        });

        $('#dismiss, .overlay').on('click', function() {
            $('#sidebar').removeClass('active');
            $('.overlay').removeClass('active');
        });

        $('#sidebarCollapse').on('click', function() {
            $('#sidebar').addClass('active');
            $('.overlay').addClass('active');
            $('.collapse.in').toggleClass('in');
            $('a[aria-expanded=true]').attr('aria-expanded', 'false');
        });
    });
</script>

<style>
    #owl-demo .item{
        margin: 3px;
    }
    #owl-demo .item img{
        display: block;
        width: 100%;
        height: auto;
    }
</style>


<script>
    $(document).ready(function() {
        $('.main_bt_border').click(function(){
            idMonAn = $(this).attr('data-idMonAn');
            soluong = $(this).attr('data-soluong');
            dongia = $(this).attr('data-dongia');
            // alert("idMonAn, soluong, dongia: "+idMonAn+" "+soluong+" "+dongia);
            $.get("ThemGioHang",
            {
                'type':'them',
                'idMonAn': idMonAn,
                'soluong': soluong,
                'dongia': dongia,
            },
            function(data,status){
                alert("Data: " + data + "\nStatus: " + status);
            });
        });





        // var owl = $('.owl-carousel');
        // owl.owlCarousel({
        //     margin: 10,
        //     nav: true,
        //     loop: true,
        //     responsive: {
        //         0: {
        //             items: 1
        //         },
        //         600: {
        //             items: 2
        //         },
        //         1000: {
        //             items: 5
        //         }
        //     }
        // })
    })
</script>

</body>

</html>