<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <%--<base href="<%=basePath%>" />--%>
    <title>Super Mario</title>
    <%@ include file="/WEB-INF/jspf/head.jspf"%>
    <script src="static/js/egox.js"></script>
    <script src="static/js/main.js"></script>


    <style type="text/css">

    </style>

    <script>
        /*
         *	init page onLoad
         */
        $(document).ready(function () {
            $.egox.ui.tabs.init();

            $("#addTab").on("click", function(e) {
//                $.egox.ui.tabs.createTab();
                $.egox.ui.tabs.test();
            });
            $("#removeTab").on("click", function(e) {

            });
            $("#activeTab").on("click", function(e) {
                $.egox.ui.tabs.activeTab(2);
            });
        });
    </script>
</head>
<body>
<!-- loading animation -->
<div id="qLoverlay"></div>
<div id="qLbar"></div>


<%@ include file="/WEB-INF/jsp/index/header.jsp"%>

<div id="wrapper">

    <%@ include file="/WEB-INF/jsp/index/sidebar.jsp"%>

    <!--Body content-->
    <div id="content" class="clearfix">
        <div class="contentwrapper"><!--Content wrapper-->
            <div class="heading">
                <div id="tabHeaders" class="ui-tabs ui-corner-all">
                    <ul class="ui-tabs-nav ui-corner-all">
                        <li class="ui-state-default ui-corner-top nav-left">
                            <a><span class="icon-chevron-left"></span></a>
                        </li>
                        <li class="ui-state-default ui-corner-top nav-right">
                            <a><span class="icon-chevron-right"></span></a>
                        </li>
                        <li class="ui-state-default ui-corner-top ui-tabs-active">
                            <a href="#ui-tabs-1" class="ui-tabs-anchor">欢迎</a>
                            <ul class="single-li">
                                <li>
                                    <b class="icon-refresh"></b>
                                </li>
                            </ul>
                        </li>
                        <li class="ui-state-default ui-corner-top">
                            <a href="#ui-tabs-2" class="ui-tabs-anchor">用户</a>
                            <ul class="single-li">
                                <li>
                                    <b class="icon-refresh"></b>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

            <div id="mainContainer">
                <div id="tabContainer">

                    <ul id="tabButtons">
                        <li class="hidden"><a href="#ui-tabs-0"></a></li>
                        <li><a href="welcome">Welcome</a></li>
                        <li><a href="users">Users</a></li>
                    </ul>

                    <!-- wrap tab-panels in ui-layout-content div -->
                    <div id="tabPanels">
                        <!-- TAB #0 -->
                        <div id="ui-tabs-0" class="tabPanel hidden"></div>

                    </div><!-- END tabPanels -->

                </div><!-- /#tabs -->

            </div>

        </div><!-- End contentwrapper -->
    </div><!-- End #content -->

</div><!-- End #wrapper -->
<%--<%@ include file="/WEB-INF/jsp/index/footer.jsp"%>--%>
</body>
</html>
