<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="barkodTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title>BARCODE TEST</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="background-color:darkgray">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <h1 class="fw-bold">ŞEKEROĞLU PAZARLAMA</h1>
        <h5 class="fw-bold">BARKOD TEST EKRANI</h5>
      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
      </ul>
    </header>
  </div>
        <div class="px-4 py-5 my-5 text-center">
         <%--<img class="d-block mx-auto mb-4" src="/docs/5.1/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">--%>
            <strong id="urunAdi" runat="server"></strong>
            <strong id="barcode" runat="server"></strong>
            <p class="fs-6 fw-bold"></p>
            <div class="col-lg-6 mx-auto">
                <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                    <asp:TextBox AutoCompleteType="None" CssClass="form-control" ID="urunBarkodu" runat="server" OnTextChanged="urunBarkodu_TextChanged"></asp:TextBox>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
