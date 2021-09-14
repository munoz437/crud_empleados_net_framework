<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="empleados.aspx.cs" Inherits="empresa_framework.empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">

        <asp:Label ID="lbl_codigo" runat="server" Text="Código" CssClass="form-label" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txt_codigo" runat="server" CssClass="form-control" placeholder=" E001"></asp:TextBox>
        
        <asp:Label ID="lbl_nombres" runat="server" Text="Nombres" CssClass="form-label" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txt_nombres" runat="server" CssClass="form-control" placeholder=" Nombre1 Nombre2"></asp:TextBox>

        <asp:Label ID="lbl_apellidos" runat="server" Text="Apellidos" CssClass="form-label" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control" placeholder=" Apellido1 Apellido2"></asp:TextBox>

        
        <asp:Label ID="lbl_direccion" runat="server" Text="Dirección" CssClass="form-label" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txt_direccion" runat="server" CssClass="form-control" placeholder=" Dirección"></asp:TextBox>

        
        <asp:Label ID="lbl_telefono" runat="server" Text="Teléfono" CssClass="form-label" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" placeholder=" 4567-3456"></asp:TextBox>

        <asp:Label ID="lbl_fn" runat="server" Text="Fecha Nacimiento" CssClass="form-label" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txt_fn" runat="server" CssClass="form-control" placeholder=" 4567-3456" TextMode="Date"></asp:TextBox>

        
        <asp:Label ID="lbl_puesto" runat="server" Text="Puesto" CssClass="form-label" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <asp:DropDownList ID="drop_puesto" CssClass="form-control" runat="server">
            
        </asp:DropDownList>
        <br />
        <asp:Button runat="server" Text="Agregar" CssClass="btn btn-info" OnClick="Unnamed1_Click" ID="btn_agregar" />
          <asp:Button runat="server" Text="Modificar" CssClass="btn btn-info" ID="btn_modificar" />
        
        


        <br />
        <asp:GridView ID="grid_empleados" runat="server" AutoGenerateColumns="False" CssClass="table-condensed" DataKeyNames="id,id_puesto" OnSelectedIndexChanged="grid_empleados_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="btn_sele" runat="server" CausesValidation="False" CommandName="Select" Text="Ver" CssClass="btn-success" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="btn_eliminar" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" CssClass="btn-danger"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                <asp:BoundField DataField="nombres" HeaderText="Nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
                <asp:BoundField DataField="direccion" HeaderText="Direccion" />
                <asp:BoundField DataField="telefono" HeaderText="Telefono" />
                <asp:BoundField DataField="fecha_nacimiento" DataFormatString="{0:d}" HeaderText="Nacimiento" />
                <asp:BoundField DataField="puesto" HeaderText="Puesto" />
            </Columns>
        </asp:GridView>

        
        


    </div>
</asp:Content>
