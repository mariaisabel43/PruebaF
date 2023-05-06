<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tarjetas.aspx.cs" Inherits="PruebaF.Views.Tarjetas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet"
        id="theme_link"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.1.2/lux/bootstrap.min.css" />
    <link href="../Css/Style.css" rel="stylesheet" />
    <script src="../js/site.js"></script>
    <title>Tarjetas</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarColor01">
                        <ul class="navbar-nav me-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="NuevaT.aspx">Agregar tarjeta</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        <div>
            <asp:Repeater ID="repTarjeta" runat="server">
                <HeaderTemplate>
                    <div class="container">
                        <div class="row">
                </HeaderTemplate>
                <ItemTemplate>
            <div class="card m-2" style="width: 30rem">
            <div class="card-header">
                <h3 class="panel-title"><%# Eval("Emisor")%><img src="<%# Eval("Foto")%>" class="card-img-top" alt="..."></h3>
            </div>
            <div class="card-body">
                **** **** **** <p class="card-text"><%# Eval("NTarjeta").ToString().Substring(Eval("NTarjeta").ToString().Length - 4)%></p>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
            </div>
    </form>
</body>
</html>
