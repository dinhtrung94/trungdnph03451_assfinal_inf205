<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hr />
    <hgroup class="title">
        <h1>Liên hệ</h1>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện thoại:</h3>
        </header>
        <p>
            <span class="label">Chính:</span>
            <span>425.555.0100</span>
        </p>
        <p>
            <span class="label">Ngoài giờ:</span>
            <span>425.555.0199</span>
        </p>

        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ:</span>
            <span><a href="mailto:vanphongpham2000@gmail.com">vanphongpham2000@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Quảng cáo:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">Chính:</span>
            <span><a href="mailto:General@example.com">General@example.com</a></span>
        </p>

        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>CS1: Linh Đàm - Hoàng Mai - Hà Nội</p>
        <p>CS2: Mỹ Đình - Từ Liêm - Hà Nội</p>
    </section>

    <aside class="sidebar">
        <iframe src="https://www.google.com/maps/d/embed?mid=zAvBR3fcHEV0.k4OQsNxrt-M0" width="100%" height="480"></iframe>
    </aside>
</asp:Content>