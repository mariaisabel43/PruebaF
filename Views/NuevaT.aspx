<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevaT.aspx.cs" Inherits="PruebaF.Views.NuevaT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet"
        id="theme_link"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.1.2/lux/bootstrap.min.css" />
     <script src="../js/site.js"></script>
    <title>Nueva Tarjeta</title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <div class="card m-2" style="width: 30rem">
                <div class="card-header">
                    Nueva tarjeta
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="Foto" class="form-label mt-4">Foto</label>
                            <asp:DropDownList class="form-select" AutoPostBack="true" ID="DropDownFoto" runat="server" OnSelectedIndexChanged="dropDownBancos_SelectedIndexChanged" required="">
                            <asp:ListItem Text="Visa" Value="1"  image="BN.jpeg"/>
                            <asp:ListItem Text="Master card" Value="2" image="BP.jpeg"/>
                            <asp:ListItem Text="American Expres" Value="3" image="BCR.png"/>
                        </asp:DropDownList>
                  </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="form-group">
                                <label for="Bancos" class="form-label mt-4">Bancos</label>
                                    <asp:DropDownList class="form-select" AutoPostBack="true" ID="dropDownBancos" runat="server" OnSelectedIndexChanged="dropDownBancos_SelectedIndexChanged" required="">
                                    <asp:ListItem Text="Banco Nacional" Value="1" />
                                    <asp:ListItem Text="Banco Popular" Value="2" />
                                    <asp:ListItem Text="Banco Costa Rica" Value="3" />
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                        <label for="Foto" class="form-label mt-4">Foto</label>
                            <asp:DropDownList class="form-select" AutoPostBack="true" ID="DropDownEmisor" runat="server" OnSelectedIndexChanged="dropDownBancos_SelectedIndexChanged" required="">
                            <asp:ListItem Text="Visa" Value="1"/>
                            <asp:ListItem Text="Master card" Value="2"/>
                            <asp:ListItem Text="American Expres" Value="3"/>
                        </asp:DropDownList>
                  </div>
                            <div class="mb-3">
                                <label class="form-label">Nombre</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="NombreI" required=""></asp:TextBox>
                            </div>
                             <div class="mb-3">
                                <label class="form-label">Apellido</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="ApellidoI" required="" ></asp:TextBox>
                            </div>
                             <div class="mb-3">
                                <label class="form-label">Numero de tarjeta</label>
                                <asp:TextBox type="number" runat="server" CssClass="form-control" ID="NTarjetaI" required="" ></asp:TextBox>
                            </div>
                             <div class="mb-3">
                                <label class="form-label">Codigo de seguridad</label>
                                <asp:TextBox type="number" runat="server" CssClass="form-control" ID="CodigoSI" required="" ></asp:TextBox>
                            </div>
                                <div class="col">
                                    <label for="FechaExpiracion" class="form-label mt-4">Fecha de expiración</label>
                                </div>
                                <div class="col">                                        
                                    <asp:Calendar class="form-control" ID="FExpiracion" runat="server">
                                    </asp:Calendar>
                                </div>
                            </div>
                        
                        </div>
                        <div class="card-footer">
                            <input type="submit" value="Guardar" class="btn btn-primary" runat="server" onserverclick="btnSave_ServerClick"/>
                            <a href="Tarjetas.aspx" onclick="btnTarjetas_ServerClick">Regresar</a>
                        </div>
                    </div>
                </div>
            </div>
            </center>
            
    </form>
</body>
</html>
