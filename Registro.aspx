<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Segundo_parcial_DAI5_Franco_Orazietti.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Registro</h2>
    <asp:TextBox ID="txtEmail" runat="server" Placeholder="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="El email es requerido"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato de email inválido" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"></asp:RegularExpressionValidator>
     <br />
     <br />
    <asp:TextBox ID="txtUsername" runat="server" Placeholder="Nombre de usuario"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="El nombre de usuario es requerido"></asp:RequiredFieldValidator>
     <br />
     <br />
    <asp:TextBox ID="txtEdad" runat="server" Placeholder="Edad" TextMode="Number"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvEdad" runat="server" ControlToValidate="txtEdad" ErrorMessage="La edad es requerida"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvEdad" runat="server" ControlToValidate="txtEdad" ErrorMessage="Debe ser mayor a 15 años" MinimumValue="16" MaximumValue="99"></asp:RangeValidator>
     <br />
     <br />
    <asp:TextBox ID="txtPassword" runat="server" Placeholder="Contraseña" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="La contraseña es requerida"></asp:RequiredFieldValidator>
     <br />
     <br />
    <asp:TextBox ID="txtRepeatPassword" runat="server" Placeholder="Repetir contraseña" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword" ErrorMessage="Debe repetir la contraseña"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRepeatPassword" ErrorMessage="Las contraseñas deben coincidir"></asp:CompareValidator>
     <br />
     <br />
    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
</asp:Content>