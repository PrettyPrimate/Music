<%@ Page Title="Music" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
    <script type="text/javascript">
    
    
    </script>

<asp:Label ID="introLabel"  runat="server" Text="I have a varied taste in music. Below are all the artists I've seen live"></asp:Label>

<asp:DataList ID="gigsDL" runat="server" DataSourceID="Sqlgigs" RepeatColumns="4" RepeatDirection="Horizontal">
<ItemTemplate>
<div class="gigDiv">
<asp:Label ID="Label1" CssClass="bandnamelabel" runat="server" Text="<%#Bind('band_name') %>"></asp:Label>
<br />
<asp:Label ID="Label2" CssClass="datelabel" runat="server" Text="<%#Bind('gig_date') %>"></asp:Label>
<br />
<asp:Label ID="Label3" CssClass="venuelabel" runat="server" Text="<%#Bind('venue_name') %>"></asp:Label>
</div>
    

</ItemTemplate>
</asp:DataList>

      <asp:SqlDataSource ID="Sqlgigs" runat="server" ConnectionString="<%$ ConnectionStrings:PPConnectionString %>" ProviderName="System.Data.SqlClient"
        SelectCommand="proc_PP_get_gigs" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

</asp:Content>