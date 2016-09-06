<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/emp" />
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
   <div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
                <h2><fmt:message key="SEARCH"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="SEARCH"/></li>
          
                </ol>
            </div>
        </div>
    </div>
   <div class="content">
   <form action="<c:url value='/mot/search.do'/>" method="post" class="form-horizontal">
   
     
    <div class="form-group">
      <label class="control-label col-sm-2" for="hiredate"><fmt:message key="SEARCH_DATE"/><br>(YYYY-MM-DD)</label>
      <div class="col-sm-2">
        <input type="date" name="hiredate" id="hiredate"  placeholder="2015-01-01" pattern="^\(?\d{4}\)?[-]\d{2}[-]\d{2}$" required>
        <input type="date" name="hiredate" id="hiredate" placeholder="2016-01-01" pattern="^\(?\d{4}\)?[-]\d{2}[-]\d{2}$" required>
      </div>
    </div>
       

    

    
    <div class="form-group">
      <label class="control-label col-sm-2" for="site"><fmt:message key="SITE"/><br>(복수선택가능)</label>
      <div class="col-sm-3">
        <span><input type="checkbox" >네이버</span><br>
        <span><input type="checkbox" >다음</span><br>
        <span><input type="checkbox" >네이트</span><br>
        <span><input type="checkbox" >유투브</span>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="hiredate"><fmt:message key="COMMENT_NUM"/></label>
      <div class="col-sm-2">
        <input type="number" name="hiredate" id="hiredate"  required>
        <br>
        <input type="number" name="hiredate" id="hiredate"  required>
      </div>
    </div>
    

  
    <div class="form-group">
       <div class="col-sm-offset-2 col-sm-8">
      <input type="submit" class="btn btn-info" value="<fmt:message key="SAVE"/>">
      <input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
      </div>
   </div>
   </form>
   </div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>