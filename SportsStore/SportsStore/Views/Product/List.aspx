<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProductsListViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<% foreach (var p in Model.Products)
   { %>
   <div class="well">
 <h3>
 <strong><%=p.Name%></strong>
 <span class="pull-right label label-primary">
<%=p.Price.ToString("c")%>
</span>
 </h3>
 <span class="lead"><%=p.Description%></span>
 </div>
<% } %>
<div>
<% int n = 1; while(n <= Model.Paging.TotalPages)
   { %>
   <a href ="/Products/Page<%=n %>"><%=n %> </a>
   <%n++;
   } %>
   </div>
</asp:Content>
