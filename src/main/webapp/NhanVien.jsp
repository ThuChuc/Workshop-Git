<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/03/2024
  Time: 4:54 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Nhan Vien</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body class="container">
<form action="/NhanVien/Add" method="post">
    <div class="mb-3">
        <label class="form-label">Ma nhan vien</label>
        <input type="text" class="form-control" name="maNV">
    </div>
    <div class="mb-3">
        <label class="form-label">Ho ten</label>
        <input type="text" class="form-control" name="tenNV">
    </div>
    <div class="mb-3">
        <label class="form-label">Tuoi</label>
        <input type="text" class="form-control" name="tuoi">
    </div>
    <div class="mb-3">
        <label class="form-label">Dia chi</label>
        <input type="text" class="form-control" name="diaChi">
    </div>
    <div>
        <label class="form-label">Chuc vu</label>
        <select class="form-select" aria-label="Default select example" name="chucVu">
            <option value="Nhan vien">Nhan vien</option>
            <option value="Quan ly">Quan ly</option>
        </select>
    </div>
    <label class="form-label">Gioi tinh</label>
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="gioiTinh" id="Nam" value="Nam">
        <label class="form-check-label">Nam</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="gioiTinh" id="Nu" value="Nu" checked>
        <label class="form-check-label">Nu</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<h2 class="text-center">Quan Ly Nhan Vien</h2>
<table class="table table-hover">
    <thead>
    <tr>
        <th>STT</th>
        <th>Ma nhan vien</th>
        <th>Ho ten</th>
        <th>Tuoi</th>
        <th>Dia Chi</th>
        <th>Chuc vu</th>
        <th>Gioi tinh</th>
        <th>Thao tac</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listNV}" var="nhanvien" varStatus="i">
        <tr>
            <td>${i.index}</td>
            <td>${nhanvien.maNV}</td>
            <td>${nhanvien.hoTen}</td>
            <td>${nhanvien.tuoi}</td>
            <td>${nhanvien.diaChi}</td>
            <td>${nhanvien.chucVu}</td>
            <td>${nhanvien.gioiTinh}</td>
            <td>
                <button class="btn btn-success">Them</button>
                <button class="btn btn-warning">Sua</button>
                <button class="btn btn-danger">Xoa</button>
                <button class="btn btn-info">Chi tiet</button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
