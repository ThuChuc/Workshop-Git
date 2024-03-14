package com.example.buoi4_test2.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class NhanVien {
    private String maNV, hoTen, diaChi, chucVu, gioiTinh;
    private Integer tuoi;
}
