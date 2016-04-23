<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <asp:Image ID="Image1" ImageUrl="~/Images/slider1.png" runat="server" />
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>Trungdnph03451_GD2_QuanLyBanHang</h2>
    <div class="qlhd">
        <h3>Quản Lý Loại Hàng >></h3>
    </div>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" AutoGenerateRows="False" DataKeyNames="MaLoai" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" ReadOnly="True" SortExpression="MaLoai"></asp:BoundField>
            <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai"></asp:BoundField>
            <asp:BoundField DataField="MaLoaiCha" HeaderText="MaLoaiCha" SortExpression="MaLoaiCha"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:trungdnph03451_gd1ConnectionString %>' DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (@MaLoai, @TenLoai, @MaLoaiCha)" SelectCommand="SELECT [MaLoai], [TenLoai], [MaLoaiCha] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoai] = @TenLoai, [MaLoaiCha] = @MaLoaiCha WHERE [MaLoai] = @MaLoai">
        <DeleteParameters>
            <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="TenLoai" Type="String"></asp:Parameter>
            <asp:Parameter Name="MaLoaiCha" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenLoai" Type="String"></asp:Parameter>
            <asp:Parameter Name="MaLoaiCha" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="qlhd">
        <h3>Quản Lý Sản Phẩm >></h3>
    </div>
    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource2" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP"></asp:BoundField>
            <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai"></asp:BoundField>
            <asp:BoundField DataField="Madonvi" HeaderText="Madonvi" SortExpression="Madonvi"></asp:BoundField>
            <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP"></asp:BoundField>
            <asp:BoundField DataField="GiaSP" HeaderText="GiaSP" SortExpression="GiaSP"></asp:BoundField>
            <asp:BoundField DataField="MoTaSP" HeaderText="MoTaSP" SortExpression="MoTaSP"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:trungdnph03451_gd1ConnectionString2 %>' DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLoai], [Madonvi], [TenSP], [GiaSP], [MoTaSP]) VALUES (@MaSP, @MaLoai, @Madonvi, @TenSP, @GiaSP, @MoTaSP)" SelectCommand="SELECT [MaSP], [MaLoai], [Madonvi], [TenSP], [GiaSP], [MoTaSP] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoai] = @MaLoai, [Madonvi] = @Madonvi, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [MoTaSP] = @MoTaSP WHERE [MaSP] = @MaSP">
        <DeleteParameters>
            <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Madonvi" Type="String"></asp:Parameter>
            <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
            <asp:Parameter Name="GiaSP" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="MoTaSP" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Madonvi" Type="String"></asp:Parameter>
            <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
            <asp:Parameter Name="GiaSP" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="MoTaSP" Type="String"></asp:Parameter>
            <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="qlhd">
        <h3>Quản Lý Khách Hàng >></h3>
    </div>
    <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource3" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH"></asp:BoundField>
            <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi"></asp:BoundField>
            <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:trungdnph03451_gd1ConnectionString3 %>' DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [Email], [DiaChi], [DienThoai]) VALUES (@MaKH, @TenKH, @Email, @DiaChi, @DienThoai)" SelectCommand="SELECT [MaKH], [TenKH], [Email], [DiaChi], [DienThoai] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [Email] = @Email, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="TenKH" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="DiaChi" Type="String"></asp:Parameter>
            <asp:Parameter Name="DienThoai" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="DiaChi" Type="String"></asp:Parameter>
            <asp:Parameter Name="DienThoai" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="qlhd">
        <h3>Quản Lý Hóa Đơn >></h3>
    </div>
    <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource4" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD"></asp:BoundField>
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH"></asp:BoundField>
            <asp:BoundField DataField="Ngayxuat" HeaderText="Ngayxuat" SortExpression="Ngayxuat"></asp:BoundField>
            <asp:BoundField DataField="Tongtien" HeaderText="Tongtien" SortExpression="Tongtien"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:trungdnph03451_gd1ConnectionString4 %>' DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [MaKH], [Ngayxuat], [Tongtien]) VALUES (@MaHD, @MaKH, @Ngayxuat, @Tongtien)" SelectCommand="SELECT [MaHD], [MaKH], [Ngayxuat], [Tongtien] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH, [Ngayxuat] = @Ngayxuat, [Tongtien] = @Tongtien WHERE [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Ngayxuat" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Tongtien" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Ngayxuat" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Tongtien" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="qlhd">
        <h3>Quản Lý Hóa Đơn Chi Tiết >></h3>
    </div>
    <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="No" DataSourceID="SqlDataSource5" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No"></asp:BoundField>
            <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD"></asp:BoundField>
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP"></asp:BoundField>
            <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:trungdnph03451_gd1ConnectionString5 %>' DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [No] = @No" InsertCommand="INSERT INTO [ChiTietHoaDon] ([No], [MaHD], [MaSP], [SoLuong]) VALUES (@No, @MaHD, @MaSP, @SoLuong)" SelectCommand="SELECT [No], [MaHD], [MaSP], [SoLuong] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [MaHD] = @MaHD, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [No] = @No">
        <DeleteParameters>
            <asp:Parameter Name="No" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="No" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="No" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
