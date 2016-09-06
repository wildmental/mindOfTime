<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header"/>
<!-- HEADER -->
<div class="container">
<div id="divHeaderWrapper">
	<header class="header-standard-2">     
    <!-- MAIN NAV -->
    <div class="navbar navbar-wp navbar-arrow mega-nav" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <i class="fa fa-bars icon-custom"></i>
            </button>
            <a class="navbar-brand" href="<c:url value="/"/>" title=""><span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>
            	<fmt:message key="TITLE"/>
            </a><div style="padding-left:15px; width:200px"></div>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden-md hidden-lg">
                    <div class="bg-light-gray">
                        <form class="form-horizontal form-light p-15" role="form">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control" placeholder="I want to find ...">
                                <span class="input-group-btn">
                                    <button class="btn btn-white" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </div>
                </li>
                   <li class="dropdown">
                    <a href='<c:url value="/"/>' class="dropdown-toggle"><fmt:message key="DASHBOARD"/></a>
                    <!-- ul class="dropdown-menu">
                        <li><a href='<c:url value="/"/>'><fmt:message key="menu_dashboard"/></a></li>
                    </ul-->
                </li>
                <li class="dropdown">
                    <a href='<c:url value="/mot?search"/>'><fmt:message key="SEARCH"/></a>
                    <!-- ul class="dropdown-menu">
                        <li><a href='<c:url value="/"/>'><fmt:message key="menu_dashboard"/></a></li>
                    </ul-->
                </li>         
                <li class="dropdown">
                    <a href='<c:url value="/mot?word_anal"/>'><fmt:message key="ANAL1"/></a>
                </li>
                 <li class="dropdown">
                	<li><a href='<c:url value="/mot/people_anal.do"/>'><fmt:message key="ANAL2"/></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
	</header>
</div>
</div>          