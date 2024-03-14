package com.example.buoi4_test2.servlet;

import com.example.buoi4_test2.model.NhanVien;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "NhanVienServlet", value = {"/NhanVien/Test", "/NhanVien/Add"})
public class NhanVienServlet extends HttpServlet {
    ArrayList<NhanVien> listNV;
    public NhanVienServlet() {
        listNV = new ArrayList<>();
        listNV.add(new NhanVien("NV01", "Nguyen Van A", "Ha Noi", "Quan ly","Nam", 20));
        listNV.add(new NhanVien("NV02", "Nguyen Thi B", "Tuyen Quang" ,"Nhan vien", "Nu", 21));
        listNV.add(new NhanVien("NV03", "Nguyen Van C", "Phu Tho" ,"Nhan vien", "Nam", 19));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listNV", listNV);
        request.getRequestDispatcher("/NhanVien.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maNhanVien = request.getParameter("maNV");
        String hoTen = request.getParameter("tenNV");
        String diaChi = request.getParameter("diaChi");
        String chucVu = request.getParameter("chucVu");
        String gioiTinh = request.getParameter("gioiTinh");
        Integer tuoi = Integer.parseInt(request.getParameter("tuoi"));
        NhanVien nhanVien = new NhanVien(maNhanVien, hoTen, diaChi, chucVu, gioiTinh ,tuoi);
        listNV.add(nhanVien);
        response.sendRedirect("/NhanVien/Test");
    }
}
