<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SportsStore.Models.Product>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<% foreach (var p in Model)
   { %>
   <div>
 <h3><%=p.Name%></h3>
 <%=p.Description%>
 <h4><%=p.Price.ToString("c")%></h4>
 </div>
<% } %>

</asp:Content>
