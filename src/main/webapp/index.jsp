<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>�ڵ� �ʺ�����!</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
    	<style>
    	/*�̹��� ��� ����*/
    	.mimg { display: block; margin: 0px auto; }
    	</style>
    
    </head>
    <body id="page-top">
        
        <!-- Ȩ �׺�� -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top"><img src="resources/img/logo/����ڳ���.png" alt="..." /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                    <!-- index������������ �׺�ٿ� home, study, developer .. ���� ���̰� �ٸ� �������� �̵��ϸ� study, developer�� ���ְ� home�� ���� home �� ������ index �������� �̵��ϰԲ�!!! -->
                        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio">STUDY</a></li>
                        <li class="nav-item"><a class="nav-link" href="#Developer">Developer</a></li>
                        <li class="nav-item"><a class="nav-link" href="home">���͵�ã��</a></li>
                        <li class="nav-item"><a class="nav-link" href="info.jsp">ä������</a></li>
                        <li class="nav-item"><a class="nav-link" href="faq.jsp">FAQ</a></li>
                        <%
                  //�α��ε� ���̵� �ִ��� Ȯ��
                  String name=(String)session.getAttribute("namekey");
                  int userNo=(Integer)session.getAttribute("userNo");
                  %>
                  <%if(name==null){ %>
                     <li class="nav-right"><a class="nav-link" href="login">�α���</a></li>
                     <li class="nav-right"><a class="nav-link" href="signup">ȸ������</a></li>
                  <%}else{ %>
                     <li class="nav-right"><a class="nav-link" href="alarmList?userNo=${userNo }">�˸�</a></li>
                     <li class="nav-right"><a class="nav-link" href="mypage?userNo=${userNo }">����������</a></li>
                     <li class="nav-right"><a class="nav-link" href="logout">�α׾ƿ�</a><br></li>
                  <%} %>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Services-->
        <section class="page-section" id="#">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">�ڳ���</h2>
                    <h3 class="section-subheading text-muted">�ڵ��ʺ����� ���͵��ϴ� ����</h3>
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">���͵� �����</h4>
                        <p class="text-muted">���ϴ� �� �����Ͽ� ���͵� ���� �ڵ� ģ���� ��ƺ�����.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">ä�����Ʈ</h4>
                        <p class="text-muted">���ϸ��� ������Ʈ �Ǵ� ä�����Ʈ�� �� ������ ��ƺ�����.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">�ڵ�</h4>
                        <p class="text-muted">�ڳ����� �ʺ� �����ںе鵵 ������ ȯ���Դϴ�.</p>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">STUDY</h2>
                    <h3 class="section-subheading text-muted">������� �� �����Ͽ� ���͵� �غ�����.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid mimg center-block" src="./resources/img/Language/NODEJS.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Node.js</div>
                                <div class="portfolio-caption-subheading text-muted">������̿���</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid mimg center-block" src="./resources/img/Language/PYTHON.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">���̽�</div>
                                <div class="portfolio-caption-subheading text-muted">Python</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid mimg center-block" src="./resources/img/Language/JAVA.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">�ڹ�</div>
                                <div class="portfolio-caption-subheading text-muted">Java</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid mimg center-block" src="./resources/img/Language/JAVASCRIPT.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">�ڹٽ�ũ��Ʈ</div>
                                <div class="portfolio-caption-subheading text-muted">JavaScript</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid mimg center-block" src="./resources/img/Language/SPRING.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">������</div>
                                <div class="portfolio-caption-subheading text-muted">Spring</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid mimg center-block" src="./resources/img/Language/KOTLIN.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">��Ʋ��</div>
                                <div class="portfolio-caption-subheading text-muted">Kotlin</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        

        <!-- Developer -->
        <section class="page-section bg-light" id="Developer">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">�ڳ��� ������</h2>
                    <h3 class="section-subheading text-muted">�ڵ� �ʺ� ���� ���� �������� �Ұ��մϴ�.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="resources/img/team/naver.png" alt="..." />
                            <h4>������</h4>
                            <p class="text-muted">�鿣��</p>
                            <!-- 
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                             -->
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="resources/img/team/kakao.png" alt="..." />
                            <h4>������</h4>
                            <p class="text-muted">����Ʈ����</p>
                      <!-- 
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                             -->
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="resources/img/team/woo-ah.png" alt="..." />
                            <h4>������</h4>
                            <p class="text-muted">�鿣��</p>
                      <!-- 
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                             -->
                        </div>
                    </div>
                <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="resources/img/team/carrot.png" alt="..." />
                            <h4>������</h4>
                            <p class="text-muted">�鿣��</p>
                      <!-- 
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                             -->
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">��������ּ��� ����</p></div>
                </div>
            </div>
        </section>

        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-start">Copyright &copy; Your Website 2021</div>  
                    <div class="col-lg-4 text-lg-end">
                        <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                        <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Portfolio Modals-->
        <!-- Portfolio item 1 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
					  <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
					</svg></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Node.js</h2>
                                     <p class="item-intro text-muted">������̿���</p>
                                     
                                    <!-- <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/1.jpg" alt="..." />
                                     -->
                                    <p>Node.js�� Ȯ�强 �ִ� ��Ʈ��ũ ���ø����̼�(Ư�� ���� ���̵�) ���߿� ���Ǵ� ����Ʈ���� �÷����̴�. �ۼ� ���� �ڹٽ�ũ��Ʈ�� Ȱ���ϸ� ����ŷ(Non-blocking) I/O�� ���� ������ �̺�Ʈ ������ ���� ���� ó�� ������ ������ �ִ�.
										<br>���� HTTP ���� ���̺귯���� �����ϰ� �־� �� �������� ����ġ ���� ������ ����Ʈ���� ���� �����ϴ� ���� �����ϸ� �̸� ���� �� ������ ���ۿ� �־� �� ���� ������ ������ �Ѵ�.<br><br>��ó:��Ű���
									</p>
                                    <ul class="list-inline">
                                        <li>
                                            <!-- <strong>Client:</strong>
                                            Threads -->
                                        </li>
                                        <li>
                                           		 
                                            
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- study page �˾�-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
					  <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
					</svg></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">���̽�</h2>
                                    <p class="item-intro text-muted">Python</p>
                                    <!-- <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/2.jpg" alt="..." />
                                     -->
                                     <p>���̽��� �ʺ��ں��� ���������� ��������� �����ϰ� �ִ�. ���� Ÿ����(dynamic typing) ���� ���α׷��� ����, �� �� ���� ���� �񱳵ȴ�. �پ��� �÷������� �� �� �ְ�, ���̺귯��(���)�� ǳ���Ͽ�, ������ ����� ���� ���� ���, ���� ��� �� ����迡�� �̿��� �����ϰ� �ִ�. �� ���̽��� ������ ���α׷� ���μ��� ��� �ܿ��� �ٸ� ���� ���� ������ �����ϴ� Ǯ���(glue language)�ν� ���� �̿�ȴ�. ���� ���̽��� ���� ��� ���� ���α׷����� ��ũ��Ʈ ���� ä��ǰ� �ִ�. ���� ������ ������ �� �Ǿ� ������, �����ڵ� ���ڿ��� �����ؼ� �پ��� ����� ���� ó������ ���ϴ�.<br><br>��ó:��Ű���</p>
                                    <ul class="list-inline">
                                        <li>
                                            
                                        </li>
                                        <li>
                                            
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 3 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
					  <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
					</svg></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">�ڹ�</h2>
                                    <p class="item-intro text-muted">Java</p>
                                    <!-- <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/3.jpg" alt="..." />
                                     -->
                                     <p>�ڹ�(����: Java)�� �� ����ũ�νý������� ���ӽ� ����(James Gosling)�� �ٸ� ���������� ������ ��ü ������ ���α׷��� ����̴�. 1991�� �׸� ������Ʈ(Green Project)��� �̸����� ������ 1995�⿡ ��ǥ�ߴ�. ó������ ������ǰ ���� ž���� �����ϴ� ���α׷��� ���� ���������� ���� �� ���ø����̼� ���߿� ���� ���� ����ϴ� ��� ��� �ϳ��̰�, ����� ���� ����Ʈ���� ���߿��� �θ� ����ϰ� �ִ�. ���� ���� 16���� ����ߴ�.<br><br>��ó:��Ű���</p>
                                    <ul class="list-inline">
                                        <li>
                                            
                                        </li>
                                        <li>
                                            
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 4 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
					  <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
					</svg></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">�ڹٽ�ũ��Ʈ</h2>
                                    <p class="item-intro text-muted">JavaScript</p>
                                    <!-- <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/4.jpg" alt="..." />
                                     -->
                                    <p>�ڹٽ�ũ��Ʈ(����: JavaScript)�� ��ü ����� ��ũ��Ʈ ���α׷��� ����̴�. �� ���� �� ������ ������ �ַ� ����ϸ�, �ٸ� ���� ���α׷��� ���� ��ü���� ������ �� �ִ� ����� ������ �ִ�. ���� Node.js�� ���� ��Ÿ�� ȯ��� ���� ���� ���α׷��ֿ��� ���ǰ� �ִ�. �ڹٽ�ũ��Ʈ�� ���� �ݽ������� Ŀ�´����̼��� ���۷��̼��� �귻�� ����ũ(Brendan Eich)�� ó������ ��ī(Mocha)��� �̸�����, ���߿��� ���̺꽺ũ��Ʈ(LiveScript)��� �̸����� �����Ͽ�����, ���������� �ڹٽ�ũ��Ʈ�� �Ǿ���. �ڹٽ�ũ��Ʈ�� �� ����ũ�νý������� �ڹٿ� ������ ������ ���� ������, �̴� ��� �� ��� ��� C ����� �⺻ ������ ������ �ױ� �����̰�, �ڹٿ� �ڹٽ�ũ��Ʈ�� �������� �������� ���ϴ�. �̸��� ���� �ܿ��� �ڹٺ��� ������ ��Ŵ�� ���缺�� ����. �ڹٽ�ũ��Ʈ�� ECMA��ũ��Ʈ(ECMAScript)�� ǥ�� ����� ���� �� ������ ���� �����ް� ������ ECMAScript 5 (ES5) ������ ��κ��� ���������� �⺻������ �����Ǿ����� ECMAScript 6 ���ĺ��ʹ� ������ ȣȯ���� ���� Ʈ�������Ϸ��� �����ϵȴ�.<br><br>��ó:��Ű���</p>
                                    <ul class="list-inline">
                                        <li>
                                            
                                        </li>
                                        <li>
                                            
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 5 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
					  <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
					</svg></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">������</h2>
                                    <p class="item-intro text-muted">Spring</p>
                                    <!-- <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/5.jpg" alt="..." />
                                     -->
                                    <p>������ �����ӿ�ũ(����: Spring Framework)�� �ڹ� �÷����� ���� ���� �ҽ� ���ø����̼� �����ӿ�ũ�μ� ������ ������(Spring)�̶�� �Ѵ�. ������ �� ����Ʈ�� �����ϱ� ���� ���� ���� ���񽺸� �����ϰ� �ִ�. ���ѹα� ��������� �� ���� ���� �� ����� �����ϰ� �ִ� �������� ǥ�������ӿ�ũ�� ��� ����μ� ���̰� �ִ�.<br><br>��ó:��Ű���</p>
                                    <ul class="list-inline">
                                        <li>
                                            
                                        </li>
                                        <li>
                                            
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 6 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
					  <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
					</svg></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">��Ʋ��</h2>
                                    <p class="item-intro text-muted">Kotlin</p>
                                    <!-- <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/6.jpg" alt="..." />
                                     -->
                                    <p>��Ʋ��(Kotlin)�� JVM���� �����ϴ� ũ�ν� �÷��� ���¼ҽ� ���α׷��� ����̴�. 2011�� 7��, ���극�λ簡 �����Ͽ���.
									<br><
									���� Ȯ���ڴ� .kt �Ǵ� .kts�� ����Ѵ�.
									<br>
									��Ʋ���� 2019�� 5�� 7�� ���ķ� ������ �ȵ���̵� �� ���߿��� ��ȣ�ϴ� �� �Ǿ���.<br><br>��ó:��Ű���</p>
                                    <ul class="list-inline">
                                        <li>
                                            
                                        </li>
                                        <li>
                                            
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/scripts.js"></script>

        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>