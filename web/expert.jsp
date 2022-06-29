<%-- 
    Document   : expert
    Created on : Jun 6, 2022, 12:16:38 PM
    Author     : Lenovo Legion
--%>

<%@page import="java.util.List"%>
<%@page import="sample.user.AdminDAO"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dental Health Medical Category Flat Bootstrap Responsive Website Template | Blog :: W3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Dental Health Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>

        <!-- css files -->
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- //css files -->

        <!-- google fonts -->
        <link
            href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
            rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext"
              rel="stylesheet">
        <!-- //google fonts -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
        %>
        <!-- top header -->
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <ul class="d-lg-flex header-w3_pvt">
                            <li class="mr-lg-3">
                                <span class="fa fa-envelope-open"></span>
                                <a href="mailto:phongkhamnhakhoathienthan@gmail.com" class="">phongkhamnhakhoathienthan@gmail.com</a>
                            </li>
                            <!-- <li>
                                    <span class="fa fa-phone"></span>
                                    <p class="d-inline">Call Us +12 345 678</p>
                            </li> -->
                            <li class="mr-lg-3">
                                <span class=""><span class="fa fa-phone"></span>Liên hệ +12 345 678</span>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 header-right-w3_pvt">
                         <%
                            AdminDAO dao = new AdminDAO();
                            List<String> listTW = dao.getOPH();
                            String stMF = "OFF";
                            String etMF = "OFF";
                            String stSS = "OFF";
                            String etSS = "OFF";
                            if (!listTW.isEmpty()) {
                                stMF = listTW.get(0);
                                etMF = listTW.get(1);
                                stSS = listTW.get(2);
                                etSS = listTW.get(3);
                            } 
                        %>
                        <ul class="d-lg-flex header-w3_pvt justify-content-lg-end">
                            <li class="mr-lg-3">
<<<<<<< HEAD
                                <span class=""><span class="fa fa-clock-o"></span>Thứ 2 - Thứ 6 : <%=stMF%> - <%=etMF%></span>
                            </li>
                            <li class="mr-lg-3">
                                <span class=""><span class="fa fa-clock-o"></span>Thứ 7 & CN : <%=stSS%> - <%=etSS%></span>
=======
                                <span class=""><span class="fa fa-clock-o"></span>Thứ 2 - Thứ 6 : 7h - 16:30h</span>
                            </li>
                            <li class="mr-lg-3">
                                <span class=""><span class="fa fa-clock-o"></span>Thứ 7 & CN : 7h - 11h</span>
>>>>>>> 33a691e3a94ec376f7b051b18701ab0118afd165
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- //top header -->

        <!-- //header -->
        <header class="py-3">
            <div class="container">
                <div id="logo">
                    <h1> <a href="index.jsp"><span class="fa fa-solid fa-tooth" aria-hidden="true"></span> Nha Khoa Thiên
                            Thần </a></h1>
                </div>
                <!-- nav -->
                <nav class="d-lg-flex">

                    <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu mt-2 ml-auto">
                        
                        <li class=""><a href="about.jsp">GIỚI THIỆU</a></li>
                        <li class="menu-sub menu-sub--has-table">
                            <a href="services.jsp">DỊCH VỤ</a>
                            <ul class="menu__service-list">
                                <li class="menu__service-description">
                                    <a href="#" class="menu__service-link"><span>Niềng răng chỉnh nha</span></a>
                                    <ul class="menu__service-colume">
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/niengrang1.html">Niềng răng mắc cài</a>
                                        </li>
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/niengrang2.html">Niềng răng Invisalign</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu__service-description">
                                    <a href="#" class="menu__service-link"><span>Răng sứ thẩm mỹ</span></a>
                                    <ul class="menu__service-colume">
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/rangsu1.html">Dán sứ Veneer</a>
                                        </li>
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/rangsu2.html">Bọc răng sứ</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu__service-description">
                                    <a href="#" class="menu__service-link"><span>Cấy ghép răng implant</span></a>
                                    <ul class="menu__service-colume">
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/cayghep1.html">Trồng răng Implant</a>
                                        </li>
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/cayghep2.html">Trồng Implant toàn hàm</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu__service-description">
                                    <a href="#" class="menu__service-link"><span>Dịch vụ bệnh lý</span></a>
                                    <ul class="menu__service-colume">
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/dichvu1.html">Lấy cao răng</a>
                                        </li>
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/dichvu2.html">Nhổ răng khôn</a>
                                        </li>
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/dichvu3.html">Hàn trám răng</a>
                                        </li>
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/dichvu4.html">Điều trị tủy</a>
                                        </li>
                                        <li class="menu__service-colume--item">
                                            <a href="./listService/dichvu5.html">Tẩy trắng răng</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="active"><a href="price.jsp">BẢNG GIÁ</a></li>
                        <li class=""><a href="knowledge.jsp">KIẾN THỨC </a></li>
                        <li class=""><a href="expert.jsp">CHUYÊN GIA</a></li>
                        <%if (loginUser == null || !loginUser.getRoleID().equals("PT")) {
                            %>
                        <li class=""><a href="login.jsp" onclick="control()">ĐẶT LỊCH</a></li>
                            <%
                            } else {
                            %>
                        <li class=""><a href="MainController?action=ShowService" >ĐẶT LỊCH</a></li>
                            <%
                                }
                            %>
                    </ul>

                    <% if (loginUser == null) {
                    %>
                    <div class="login-icon ml-2">
                        <a class="user" href="login.jsp"> LOGIN </a>
                    </div>
                    <% } else if (loginUser != null && loginUser.getRoleID().equals("AD")) {
                    %>
                    <div class="dropdown btn-group">
                        <a class="navbar-brand dropdown-toggle" href="admin.jsp" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="./assets/images/users/1.jpg" style="width: 50px; border-radius: 30px; margin-top: -7px; margin-left: 5px" alt="admin" class="profile-pic me-2">
                        </a>
                        <ul class="dropdown-menu" style="background-color: #63B43E">
                            <a href="admin.jsp" style="padding: 0">
                                <button class="dropdown-item" type="button">
                                    <i class="fa-solid fa-circle-arrow-right"></i>
                                    Tài Khoản Của Tôi
                                </button>
                            </a>
                            <a href="login.jsp" style="padding: 0">
                                <form action="MainController">
                                    <button class="dropdown-item" type="button">
                                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                                        <input type="submit" name="action" value="Logout" style=" background-color: transparent; border: none"/>
                                    </button>
                                </form>
                            </a>
                        </ul>
                    </div>
                    <%
                        } else if (loginUser != null && loginUser.getRoleID().equals("PT")) {
                    %> 
                    
                    <div class="dropdown btn-group">
                        <a class="navbar-brand dropdown-toggle" href="patient.jsp" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="./images/sontung.jpg" style="width: 50px; border-radius: 30px; margin-top: -7px; margin-left: 5px" alt="patient" class="profile-pic me-2">
                        </a>
                        <ul class="dropdown-menu" style="background-color: #63B43E">
                            <a href="patient.jsp" style="padding: 0">
                                <button class="dropdown-item" type="button">
                                    <i class="fa-solid fa-circle-arrow-right"></i>
                                    Tài Khoản Của Tôi
                                </button>
                            </a>
                            <a href="MainController?action=SearchHSBK&searchHSBK" style="padding: 0">
                                <button class="dropdown-item" type="button">
                                    <i class="fa-solid fa-circle-arrow-right"></i>
                                    Lịch Sử Đặt Lịch
                                </button>
                            </a>
                            <a href="login.jsp" style="padding: 0">
                                <form action="MainController">
                                    <button class="dropdown-item" type="button">
                                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                                        <input type="submit" name="action" value="Logout" style=" background-color: transparent; border: none"/>
                                    </button>
                                </form>
                            </a>
                        </ul>
                    </div>
                    <%
                        } else if (loginUser != null && loginUser.getRoleID().equals("DR")) {
                    %>
                    <div class="dropdown btn-group">
                        <a class="navbar-brand dropdown-toggle" href="doctor.jsp" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="./images/blog4.jpg" style="width: 50px; border-radius: 30px; margin-top: -7px; margin-left: 5px" alt="doctor" class="profile-pic me-2">
                        </a>
                        <ul class="dropdown-menu" style="background-color: #63B43E">
                            <a href="doctor.jsp" style="padding: 0">
                                <button class="dropdown-item" type="button">
                                    <i class="fa-solid fa-circle-arrow-right"></i>
                                    Tài Khoản Của Tôi
                                </button>
                            </a>
                            <a href="login.jsp" style="padding: 0">
                                <form action="MainController">
                                    <button class="dropdown-item" type="button">
                                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                                        <input type="submit" name="action" value="Logout" style=" background-color: transparent; border: none"/>
                                    </button>
                                </form>
                            </a>
                        </ul>
                    </div>
                    <%
                        }
                    %>

                </nav>
                <div class="clear"></div>
                <!-- //nav -->
            </div>
        </header>
        <!-- //header -->

        <!-- banner -->
        <div class="innerpage-banner" id="home">
            <div class="inner-page-layer">
            </div>
        </div>
        <!-- //banner -->

        <!-- blog -->
        <section class="blog py-5">
            <div class="container py-md-3">
                <h2 class="heading text-center mb-sm-5 mb-4">Đội Ngũ Bác Sĩ</h2>
                <div class="row blog-grids head">
                    <div class="col-lg-4 mb-lg-5 blog-img1">
                        <img src="images/t6.jpg" alt="" class="img-fluid" />
                        <a href="single.html">Expert #1</a>
                    </div>
                    <div class="col-lg-8 mb-lg-5 mb-4">
                        <h5>May 22, 2022.</h5>
                        <h4 class="my-3">BS. Võ Văn Tự Hiến</h4>
                        <p class="my-3">
                            Bác sĩ Võ Văn Tự Hiến tốt nghiệp đại học Y dược TP.HCM chuyên ngành Răng Hàm Mặt và có khoảng
                            thời gian tu nghiệp tại University Of Texas Dental Branch at Houston (Mỹ) Chuyên ngành Cấy Ghép
                            Nha Khoa, sau đó bác sĩ hoàn thành chương trình Tiến sĩ y học về lĩnh vực cấy ghép Implant Nha
                            khoa.
                        </p>
                        <p class="my-3">
                            Bác sĩ Võ Văn Tự Hiến tốt nghiệp đại học Y dược TP.HCM chuyên ngành Răng Hàm Mặt và có khoảng
                            thời gian tu nghiệp tại University Of Texas Dental Branch at Houston (Mỹ) Chuyên ngành Cấy Ghép
                            Nha Khoa, sau đó bác sĩ hoàn thành chương trình Tiến sĩ y học về lĩnh vực cấy ghép Implant Nha
                            khoa.
                        </p>
                    </div>
                    <div class="col-lg-7 mb-lg-5 mb-4">
                        <h5>May 22, 2022.</h5>
                        <h4 class="my-3">BS Nguyễn Thị Thu Thủy</h4>
                        <p class="my-3">
                            Bác sĩ Nguyễn Thị Thu Thủy được đào tạo từ nhiều trường Đại học nha khoa nổi tiếng
                            thế giới và nhận được chứng chỉ giáo dục y khoa về cắm ghép implant tại Đại học Harvard (Mỹ),
                            cùng các chứng chỉ khác tại Úc, Hàn Quốc v.v..
                            Bác sĩ Thu Thủy có bề dày kinh nghiệm hơn 20 năm trong thăm khám và điều trị nha khoa tại Bệnh
                            viện Quốc gia Răng-Hàm-Mặt.
                        </p>
                        <p class="my-3">
                            BS. Thu Thủy hiện đang đảm nhiệm vai trò bác sĩ Răng Hàm Mặt tại Nha Khoa Hoa Hồng Phương Đông
                            chuyên về cắm ghép Implant.
                        </p>
                    </div>
                    <div class="col-lg-5 mb-5 blog-img2">
                        <img src="images/t5.jpg" alt="" class="img-fluid" />
                        <a href="single.html">Expert #2</a>
                    </div>
                    <div class="col-lg-5 mb-lg-5 blog-img1">
                        <img src="images/blog3.webp" alt="" class="img-fluid" />
                        <a href="single.html">Expert #3</a>
                    </div>
                    <div class="col-lg-7 mb-lg-5 mb-4">
                        <h5>May 22, 2022.</h5>
                        <h4 class="my-3">Dr. Đặng Thị Thu Hằng</h4>
                        <p class="my-3">
                            Tốt nghiệp bác sĩ chuyên ngành Răng Hàm Mặt Trường Đại Học Y Hà Nội.
                            Có nhiều năm kinh nghiệm trong lĩnh vực chỉnh nha và nha khoa tổng quát.
                            Hoàn thành khóa học mặt dán và phục hình dán sứ veneer.
                            Hoàn thành khóa học Chỉnh Nha Lâm Sàng, từ triết lý tới kỹ thuật của Tiến sĩ Trần Ngọc Quảng
                            Phi.
                        </p>
                        <p class="my-3">
                            Chứng chỉ niềng răng không mắc cài Invisalign, Align Technology, USA
                            Chứng chỉ chỉnh nha cơ chức năng của DR.John Flutter, Australia
                            Chứng chỉ “Số hóa trong chỉnh nha”, Đại học Y Dược tp.HCM
                            Chứng nhận hội thảo “Khớp cắn lý tưởng trong chỉnh nha” Prahda, CH Séc.
                        </p>
                    </div>
                    <div class="col-lg-7 mb-lg-5 mb-4">
                        <h5>May 22, 2022.</h5>
                        <h4 class="my-3">Dr. Vũ Đức Dũng</h4>
                        <p class="my-3">Chuyên gia chỉnh nha không mắc cài Invisalign do công ty Align Mỹ chứng nhận,
                            Bác sĩ chuyên khoa Răng Hàm Mặt Đại học Y Hà Nội,
                            Nhiều năm kinh nghiệm phẫu thuật và điều trị Răng Hàm Mặt.</p>
                        <p class="my-3">Chứng chỉ đào tạo chuyên môn về trồng răng Implant Đại học Y Hà Nội,
                            Chứng chỉ chỉnh nha theo trường phái không nhổ răng của giáo sư Nanda do công ty Đại Nha cấp.
                        </p>
                    </div>
                    <div class="col-lg-5 blog-img2">
                        <img src="images/blog4.jpg" alt="" class="img-fluid" />
                        <a href="single.html">Expert #4</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- //blog -->

        <!-- footer -->
        <section class="appointment text-center py-5">
            <div class="container py-sm-3">
                <h4>Biến nụ cười mơ ước của bạn thành sự thật</h4>
                <p class="mt-3">Gọi chúng tôi để đặt lịch ngay</p>
                <p>+84123456789</p>
                <a style="font-size: 30px" href="MainController?action=ShowService">ĐẶT LỊCH NGAY</a>
            </div>
        </section>
        <!-- //appointment -->

        <!-- footer -->
        <footer class="py-5">
            <div class="container py-sm-3">
                <div class="row footer-grids">
                    <div class="col-lg-6 col-sm-6 mb-lg-0 mb-sm-5 mb-4">
                        <h4 class="mb-sm-4 mb-3"><span class="fa fa-stethoscope"></span> Nha Khoa Thiên Thần</h4>
                        <p class="mb-3">Nha khoa Thiên Thần -Trung tâm trồng răng và Niềng răng. Tự hào là một trong những nha
                            khoa ở TP.HCM đi đầu về công nghệ và chất lượng đội ngũ Y bác sỹ.</p>
                        <h5>Được tin cậy bởi <span>500+ Người</span> </h5>
                    </div>
                    <div class="col-lg-6 col-sm-6 mb-lg-0 mb-sm-5 mb-4">
                        <h4 class="mb-sm-4 mb-3">Thông Tin Địa Chỉ</h4>
                        <p><span class="fa mr-2 fa-map-marker"></span>Đường D1, Long Thạnh Mỹ, <span>T.Phố Thủ Đức, T.Phố Hồ
                                Chí Minh.</span></p>
                        <p class="phone py-2"><span class="fa mr-2 fa-phone"></span> +1(12) 123 456 789 </p>
                        <p><span class="fa mr-2 fa-envelope"></span><a href="mailto:info@example.com">info@example.com</a>
                        </p>
                        <p><span class=""><span class="fa fa-clock-o"></span>Giờ mở cửa: 7h - 16:30h (cả Thứ 7 và CN)</span>
                        </p>
                    </div>
                    <!-- <div class="col-lg-2 col-sm-6 mb-sm-0 mb-4">
                            <h4 class="mb-sm-4 mb-3">Liên Hệ Phòng Khám</h4>
                            <ul>
                                    <li><a href="#">Terms & Conditions</a></li>
                                    <li class="my-2"><a href="#">Support Helpline</a></li>
                                    <li><a href="#">Healthy Tips</a></li>
                                    <li class="mt-2"><a href="#">Privacy Ploicy</a></li>
                            </ul>
                    </div> -->
                </div>
            </div>
        </footer>
        <!-- //footer -->

        <!-- copyright -->
        
        <!-- //copyright -->

        <!-- move top -->
        <div class="move-top text-right">
            <a href="#home" class="move-top">
                <span class="fa fa-angle-up  mb-3" aria-hidden="true"></span>
            </a>
        </div>
       <!-- move top -->
        <!-- JS bootstrap banner -->
        <!-- JavaScript Bundle with Popper -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <!-- JavaScript Bundle with Popper -->  
        <script>
                    function control() {
                        alert("Xin hãy đăng nhập để được đặt lịch!!!");
                    }
        </script>
    </body>
</html>
