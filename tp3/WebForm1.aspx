<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="tp3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 22px;
            width: 130px;
        }
        .auto-style6 {
            height: 23px;
            width: 130px;
        }
        .auto-style7 {
            width: 130px;
        }
        .auto-style8 {
            height: 26px;
            width: 130px;
        }
        .auto-style9 {
            height: 22px;
            width: 200px;
        }
        .auto-style10 {
            height: 23px;
            width: 200px;
        }
        .auto-style11 {
            width: 200px;
        }
        .auto-style12 {
            height: 26px;
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial; font-size: 12px">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3" class="auto-style3" style="padding-top: 10px; padding-bottom: 10px; padding-left: 164px; font-weight: bold;">Localidades</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="padding-left: 30px">Nombre de Localidad:</td>
                    <td class="auto-style9"><asp:TextBox ID="txtLocalidad" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtLocalidad" ValidationGroup="Grupo1">Ingrese una Localidad</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-top: 10px; padding-bottom: 10px; padding-left: 164px;">
                    <asp:Button ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" OnClick="btnGuardarLocalidad_Click" ValidationGroup="Grupo1" Width="159px" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style3" style="padding-top: 10px; padding-bottom: 10px; padding-left: 164px; font-weight: bold;">Usuarios</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="padding-left: 30px">Nombre de Usuario:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUser" ErrorMessage="Ingrese Usuario" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="padding-left: 30px">Contraseña:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvPass" runat="server" ErrorMessage="Ingrese Contraseña" ControlToValidate="txtPass" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="padding-left: 30px">Repetir Contraseña:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtRepeatPass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvRepeatPass" runat="server" ControlToValidate="txtRepeatPass" ErrorMessage="Ingrese Contraseña" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtRepeatPass" ErrorMessage="La Contraseña no Coincide" ValidationGroup="Grupo2"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="padding-left: 30px">Coreo electrónico:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Ingrese un Email" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Ingrese un Email Valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Grupo2"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="padding-left: 30px">CP:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" ControlToValidate="txtCP" ErrorMessage="Ingrese un Codigo Postal" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="rgvZipCode" runat="server" ControlToValidate="txtCP" ErrorMessage="Ingrese un Código Postal Valido" ValidationExpression="^[0-9]{4}$" ValidationGroup="Grupo2"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="padding-left: 30px">Localidades:</td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="ddlLocalidad" runat="server" AutoPostBack="True">
                            <asp:ListItem>--Seleccione Localidad--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ErrorMessage="Elija una Localidad" ControlToValidate="ddlLocalidad" InitialValue="--Seleccione Localidad--" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-top: 10px; padding-bottom: 10px; padding-left: 164px;">
                        <asp:Button ID="btnSaveUser" runat="server" OnClick="Button2_Click" Text="Guardar Usuario" ValidationGroup="Grupo2" />
                    </td>
                    <td>
                        <asp:Label ID="lblSaveUser" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-top: 10px; padding-bottom: 10px; padding-left: 30px;">
                        <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio.aspx" OnClick="btnInicio_Click" ValidationGroup="Grupo3" />
                    </td>
                    <td></td>
                </tr>
            </table>
            </div>
    </form>
    </body>
</html>
