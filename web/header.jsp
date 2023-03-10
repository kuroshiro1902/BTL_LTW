<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="loadCategory" class="dao.Categories" scope="request"></jsp:useBean>
<div id="toast"></div>
<section class="head-container container">
    <div class="header">
        <div class="header-logo logo" title="Comic Max - Comic & Manga Shop">
            <a href="index.jsp"></a>
        </div>
        <div class="header-nav navbar">
            <div class="subnav-switch">
                <a class="header-nav__item red-hover">
                    <i class="fa-solid fa-fire-flame-curved"></i>
                    <h4>Action</h4>
                    <i class="fa-solid fa-caret-down"></i>
                </a>
                <div class="subnav">
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/anime-coloring-book.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/anime-coloring-book.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/anime-coloring-book.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/anime-coloring-book.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/anime-coloring-book.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                </div>
            </div>
            <div class="subnav-switch">
                <a class="header-nav__item red-hover">
                    <i class="fa-solid fa-bolt"></i>
                    <h4>Fantasy</h4>
                    <i class="fa-solid fa-caret-down"></i>
                </a>
                <div class="subnav">
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/anime-coloring-book.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/anime-coloring-book.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/anime-coloring-book.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/flash.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                    <a class="subnav__book text-center" href="">
                        <img class="bdr-8" src="./img/home_product/anime-coloring-book.webp" alt="">
                        <h2 style="margin-top: 8px">Anime</h2>
                        <p>$ 20.00</p>
                    </a>
                </div>
            </div>
            <div class="subnav-switch mb-menu">
                <a class="header-nav__item red-hover">
                    <i class="fa-solid fa-bars"></i>
                    <h4>Category</h4>
                    <i class="fa-solid fa-caret-down"></i>
                </a>
                <div class="subnav">
                    <c:forEach items="${loadCategory.allCategories}" var="o" begin="0" end="3">
                        <a class="subnav__category" href="">
                            <img src="./img/home_product/${o.img}" alt="">
                            <div class="button" style=" max-width: 146px; text-align: center;">${o.value}</div>
                        </a>
                    </c:forEach>
                </div>
                <div class="mb-subnav">
                    <div class="mb-subnav__btn">
                        <a href="">
                            <i class="fa-solid fa-tag"></i>
                            <span>MUA TRUY???N</span>
                        </a>
                    </div>
                    <div class="mb-subnav__btn">
                        <a href="">
                            <i class="fa-solid fa-pen"></i>
                            <span>BLOG</span>
                        </a>
                    </div>
                </div>
            </div>
            <div>
                <a href="blog.jsp" class="header-nav__item red-hover">
                    <i class="fa-solid fa-pen"></i>
                    <h4>Blog</h4>
                </a>
            </div>
        </div>
        <form class="searchbar block-center">
            <input type="text" name="search" placeholder="Search" title="What do want to read?" required>
            <input type="submit" value="Search" class="button" style="display: none">
        </form>
        <div class="header-usernav navbar">
            <a href="" class="header-usernav__item red-hover cart">
                <i class="fa-solid fa-cart-shopping"></i>
                <span class="amount">0</span>
            </a>
            <c:if test="${sessionScope.account != null}">
                <div class="usersubnav-switch user-hover">
                <a href="javascript:void(0)" class="header-usernav__item user user-hover" title="${sessionScope.account.getUsername()}">
                    <img src="./img/default.webp" alt="" style="border-radius: 50%">
                </a>
                <div class="subnav">
                    <a class="usersubnav__item" href>Account &nbsp;<i class="fa-solid fa-user"></i></a>
                    <a class="usersubnav__item" href>Delivery &nbsp;<i class="fa-solid fa-truck"></i></a>
                    <a class="usersubnav__item" href>Setting &nbsp;<i class="fa-solid fa-gear"></i></a>
                    <a class="usersubnav__item" href="./logout">Log out &nbsp;<i class="fa-solid fa-right-from-bracket"></i></a>
                </div>
            </c:if>
            <c:if test="${sessionScope.account == null}">
                <div class="usersubnav-switch">
                <a href="signup.jsp" class="header-usernav__item red-hover user">
                    <i class="fa-solid fa-user" title="Sign up for an account"></i> 
                </a>
            </c:if>
            </div>
        </div>
    </div>
</section>