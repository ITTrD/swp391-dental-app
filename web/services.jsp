<%-- 
    Document   : services
    Created on : Jun 6, 2022, 12:18:42 PM
    Author     : Lenovo Legion
--%>

<%@page import="sample.user.PatientDAO"%>
<%@page import="sample.services.CategoryServiceDTO"%>
<%@page import="sample.services.ServiceDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.user.AdminDAO"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dental Health Medical Category Flat Bootstrap Responsive Website Template | Services :: W3layouts</title>
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
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
        <!-- //google fonts -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
        %>
        <!-- top header -->
        <div class="header-top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4">
                        <ul class="d-lg-flex header-w3_pvt">
                            <li class="mr-lg-3">
                                <span class="fa fa-envelope-open"></span>
                                <a href="mailto:phongkhamnhakhoathienthan@gmail.com" class="">phongkhamnhakhoathienthan@gmail.com</a>
                            </li>
                        </ul>
                        <ul class="d-lg-flex header-w3_pvt">
                            <li class="mr-lg-3">
                                <span class=""><span class="fa fa-phone"></span>Li??n h??? +12 345 678</span>
                            </li>
                        </ul>
                    </div>
                    
                    <div class="col-sm-4">
                        <ul class="d-lg-flex">
                                <form action="SearchInformationController" >
                                    <div class="tech-btm d-lg-flex">
                                        <div class="form-outline">
                                            <input type="text" name="txtSearch" class="form-control px-2" value="${param.txtSearchValue}" placeholder="T??m Ki???m"/>
                                            <input type="hidden" name="index" value="1"/>
                                        </div>
                                        <button type="submit" name="action" value="T??m ki???m" class="btn btn-success">
                                            <i class="fas fa-search"></i>
                                        </button>

                                    </div>
                                </form>
                        </ul>
                    </div>
                    
                    <div class="col-sm-4 header-right-w3_pvt">
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
                                <span class=""><span class="fa fa-clock-o"></span>Th??? 2 - Th??? 6 : <%=stMF%> - <%=etMF%></span>
                            </li>
                            <li class="mr-lg-3">
                                <span class=""><span class="fa fa-clock-o"></span>Th??? 7 & CN : <%=stSS%> - <%=etSS%></span>
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
                    <h1> <a href="index.jsp"><span class="fa fa-solid fa-tooth" aria-hidden="true"></span> Nha Khoa Thi??n
                            Th???n </a></h1>
                </div>
                <!-- nav -->
                <nav class="d-lg-flex">

                    <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu mt-2 ml-auto">

                        <li class=""><a href="about.jsp">GI???I THI???U</a></li>
                        <li class="menu-sub menu-sub--has-table">
                            <a href="services.jsp">D???CH V???</a>
                            <ul class="menu__service-list">
                                <%
                                    PatientDAO dao1 = new PatientDAO();
                                    List<CategoryServiceDTO> listCate = dao1.getTableCategory();
                                    if (listCate != null) {
                                        if (listCate.size() > 0) {
                                            for (CategoryServiceDTO cate : listCate) {


                                %>
                                <li class="menu__service-description">   
                                    <a class="menu__service-link"><span> <%= cate.getCategoryName()%></span>  
                                        
                                    </a>    
                                    <%
                                        String cate1 = cate.getCategoryName();
                                        
                                        List<ServiceDTO> listService = dao1.getTableService(cate1);

                                        if (listService != null) {

                                            if (listService.size() > 0) {

                                    %>
                                    <ul class="menu__service-colume">
                                    <%                                                                
                                        for (ServiceDTO table : listService) {


                                    %> 
                                    
                                        <li class="menu__service-colume--item">
                                            <a href="MainController?action=Show_About&serviceID=<%= table.getServiceID() %>"><%= table.getServiceName()%></a>
                                        </li>
                                   


                                    <%

                                                }
                                                %>
                                             </ul>   
                                                <%
                                            }

                                        }
                                    %>
                                </li>
                                <%
                                    }

                                %>
                                <%        }
                                    }

                                %> 
                            </ul>
                        </li>
                        <li class="active"><a href="priceServiceHome.jsp">B???NG GI??</a></li>
                        <li class=""><a href="knowledge.jsp">KI???N TH???C </a></li>
                        <li class=""><a href="expert.jsp">CHUY??N GIA</a></li>
                            <%if (loginUser == null || !loginUser.getRoleID().equals("PT")) {
                            %>
                        <li class=""><a href="login.jsp" onclick="control()">?????T L???CH</a></li>
                            <%
                            } else {
                            %>
                        <li class=""><a href="MainController?action=ShowService" >?????T L???CH</a></li>
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
                                    T??i Kho???n C???a T??i
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
                                    T??i Kho???n C???a T??i
                                </button>
                            </a>
                            <a href="MainController?action=SearchHSBK&searchHSBK" styl"e="padding: 0">
                                <button class="dropdown-item" type="button">
                                    <i class="fa-solid fa-circle-arrow-right"></i>
                                    L???ch S??? ?????t L???ch
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
                            <a href="doctorjsp" style="padding: 0">
                                <button class="dropdown-item" type="button">
                                    <i class="fa-solid fa-circle-arrow-right"></i>
                                    T??i Kho???n C???a T??i
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

        <!-- Services -->
        <!-- <section class="services-inner py-5">
                <div class="container py-md-3">
                        <h2 class="heading text-center mb-sm-5 mb-4">C??C D???CH V??? T???I NHA KHOA THI??N TH???N</h2>
                        <div class="row service-grids">
                                <div class="row col-lg-6 mb-5 padder-none">
                                        <div class="col-sm-3 ser_icon">
                                                <span class="icon bg1 mx-auto">
                                                        <span class="fa fa-heartbeat"></span>
                                                </span>
                                        </div>
                                        <div class="col-sm-9 mt-sm-0 mt-3">
                                                <h4>Root Canal and Teeth Whitening</h4>
                                                <p class="">Quisque ac sapien quis orci pulvinar finibus quisn eu urna Quisque Suspendisse id felisut sed felise tincidunt finibus.
                                                Nulla sed justo tellus. Donec et felis ante ipsum urna Quisque sed felis dolor.</p>
                                        </div>
                                </div>
                                <div class="row col-lg-6 mb-sm-5 padder-none">
                                        <div class="col-sm-9 text-sm-right">
                                                <h4> Orthodontics and Dental Filling</h4>
                                                <p class="">Quisque ac sapien quis orci pulvinar finibus quisn eu urna Quisque Suspendisse id felisut sed felise tincidunt finibus.
                                                Nulla sed justo tellus. Donec et felis ante ipsum urna Quisque sed felis dolor.</p>
                                        </div>
                                        <div class="col-sm-3 mt-sm-0 mt-4 ser_icon ser-right">
                                                <span class="icon bg2 mx-auto">
                                                        <span class="fa fa-stethoscope"></span>
                                                </span>
                                        </div>
                                </div>
                                <div class="row col-lg-6 mb-lg-0 mb-5 mt-sm-0 mt-5 padder-none">
                                        <div class="col-sm-3 mb-sm-0 mb-4 ser_icon">
                                                <span class="icon bg3 mx-auto">
                                                        <span class="fa fa-bullseye"></span>
                                                </span>
                                        </div>
                                        <div class="col-sm-9">
                                                <h4>Tooth Extraction Treatment</h4>
                                                <p class="">Quisque ac sapien quis orci pulvinar finibus quisn eu urna Quisque Suspendisse id felisut sed felise tincidunt finibus.
                                                Nulla sed justo tellus. Donec et felis ante ipsum urna Quisque sed felis dolor.</p>
                                        </div>
                                </div>
                                <div class="row col-lg-6 padder-none">
                                        <div class="col-sm-9 text-sm-right">
                                                <h4>Daily Routine Check-up</h4>
                                                <p class="">Quisque ac sapien quis orci pulvinar finibus quisn eu urna Quisque Suspendisse id felisut sed felise tincidunt finibus.
                                                Nulla sed justo tellus. Donec et felis ante ipsum urna Quisque sed felis dolor.</p>
                                        </div>
                                        <div class="col-sm-3 mt-sm-0 mt-4 ser_icon ser-right">
                                                <span class="icon bg4 mx-auto">
                                                        <span class="fa fa-user-md"></span>
                                                </span>
                                        </div>
                                </div>
                        </div>
                </div>
        </section> -->
        <!-- //Services -->


        <!-- services -->
        <section class="services py-5">
            <div class="container py-lg-5">
                <h3 class="heading text-center mb-sm-5">D???CH V??? N???I B???T</h3>
                <div class="row offer-grids">
                    <%
                        List<ServiceDTO> listService = dao.getTop6Service();
                         if (listService.size() > 0) {
                             for (ServiceDTO ser : listService) {
                                 
                                 %>
                                <div class="col-lg-4 col-md-6 mt-md-0 hoverItem">
                        <a href="MainController?action=Show_About&serviceID=<%=ser.getServiceID() %>">
                            <div class="bg-layer--img">
                                <img width="348px" height="260px" src="./images/<%= ser.getImage() %>" alt="can't show">
                            </div>
                            <div class="ser1">
                                <div class="bg-layer">
                                    <h4 class=""><%=ser.getServiceName() %></h4>
                                </div>
                            </div>
                        </a>
                        </div> 
                                 
                                 <%
                             }
                         }
                    %>                    
 
                </div>
            </div>
        </section>
        <!-- //services -->	

        <!-- join -->
        <section class="join py-5">
            <div class="container py-lg-5 py-sm-3">
                <div class="row join_grids">
                    <div class="col-lg-6">
                        <img src="./images/csht.jpg" class="img-fluid" alt="" />
                    </div>
                    <div class="col-lg-6">
                        <h4 class="mt-2">C?? S??? H??? T???NG C???A NHA KHOA THI??N TH???N</h4>
                        <p class="py-sm-4 py-3">B??n c???nh vi???c ch?? tr???ng n??ng cao tay ngh??? c???a ?????i ng?? b??c s??. Nha khoa Thi??n Th???n lu??n d??nh s??? quan t??m ?????c bi???t ?????n vi???c ?????u t?? x??y d???ng ?????ng b??? c?? s??? v???t ch???t h??? t???ng v???i nhi???u trang thi???t b??? hi???n ?????i. Ch??nh v?? v???y 99% kh??ch h??ng khi sau khi ?????n v?? tr???i nghi???m d???ch v??? t???i Nha khoa Thi??n Th???n ?????u c???m th???y h??i l??ng v?? an t??m.</p>
                        <p class="pb-3">L?? m???t c?? s??? ???????c c???p ph??p ho???t ?????ng c???a B??? Y T??? nha khoa Thi??n Th???n lu??n n??? l???c n??ng c???p c?? s??? h??? t???ng, v???t ch???t nh???m mang ?????n tr???i nghi???m d???ch v??? th?? gi??n, tho???i m??i nh???t.</p>
                        <a class="btn btn-banner text-capitalize" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- //join -->

        <!-- footer -->
        <section class="appointment text-center py-5">
            <div class="container py-sm-3">
                <h4>Bi???n n??? c?????i m?? ?????c c???a b???n th??nh s??? th???t</h4>
                <p class="mt-3">G???i ch??ng t??i ????? ?????t l???ch ngay</p>
                <p>+84123456789</p>
                <a style="font-size: 30px" href="MainController?action=ShowService">?????T L???CH NGAY</a>
            </div>
        </section>
        <!-- //appointment -->

        <!-- footer -->
        <footer class="py-5">
            <div class="container py-sm-3">
                <div class="row footer-grids">
                    <div class="col-lg-6 col-sm-6 mb-lg-0 mb-sm-5 mb-4">
                        <h4 class="mb-sm-4 mb-3"><span class="fa fa-stethoscope"></span> Nha Khoa Thi??n Th???n</h4>
                        <p class="mb-3">Nha khoa Thi??n Th???n -Trung t??m tr???ng r??ng v?? Ni???ng r??ng. T??? h??o l?? m???t trong nh???ng nha
                            khoa ??? TP.HCM ??i ?????u v??? c??ng ngh??? v?? ch???t l?????ng ?????i ng?? Y b??c s???.</p>
                        <h5>???????c tin c???y b???i <span>500+ Ng?????i</span> </h5>
                    </div>
                    <div class="col-lg-6 col-sm-6 mb-lg-0 mb-sm-5 mb-4">
                        <h4 class="mb-sm-4 mb-3">Th??ng Tin ?????a Ch???</h4>
                        <p><span class="fa mr-2 fa-map-marker"></span>???????ng D1, Long Th???nh M???, <span>T.Ph??? Th??? ?????c, T.Ph??? H???
                                Ch?? Minh.</span></p>
                        <p class="phone py-2"><span class="fa mr-2 fa-phone"></span> +1(12) 123 456 789 </p>
                        <p><span class="fa mr-2 fa-envelope"></span><a href="mailto:info@example.com">info@example.com</a>
                        </p>
                        <p><span class=""><span class="fa fa-clock-o"></span></span>Th??? 2 - Th??? 6 : <%=stMF%> - <%=etMF%></span>
                        </p>
                        <p><span class=""><span class="fa fa-clock-o"></span></span>Th??? 7 & CN : <%=stSS%> - <%=etSS%></span>
                        </p>
                    </div>
                    <!-- <div class="col-lg-2 col-sm-6 mb-sm-0 mb-4">
                            <h4 class="mb-sm-4 mb-3">Li??n H??? Ph??ng Kh??m</h4>
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
                                alert("Xin h??y ????ng nh???p ????? ???????c ?????t l???ch!!!");
                            }
        </script>
    </body>
</html>
