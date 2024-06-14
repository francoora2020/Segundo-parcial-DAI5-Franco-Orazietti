<%@ Page Title="Gestión de archivos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gestiondearchivos.aspx.cs" Inherits="Segundo_parcial_DAI5_Franco_Orazietti.Gestiondearchivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Gestión de Archivos</h2>
    <asp:FileUpload ID="fuArchivo" runat="server" />
    <asp:Button ID="btnSubir" runat="server" Text="Subir Archivo" OnClick="btnSubir_Click" />
    
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Nombre de Archivo" />
            <asp:BoundField DataField="FullPath" HeaderText="Ruta Completa" Visible="false" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnDescargar" runat="server" Text="Descargar" CommandName="Descargar" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
