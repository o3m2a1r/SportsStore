<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProductsListViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<% foreach (var p in Model.Products)
   { %>
   <div>
 <h3><%=p.Name%></h3>
 <%=p.Description%>
 <h4><%=p.Price.ToString("c")%></h4>
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
