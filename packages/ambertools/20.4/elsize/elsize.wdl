version 1.0

task Elsize {
  input {
    Boolean? det
    String? ell
    Float? elf
    String? abc
    File? tab
    String? hea
    String? deb
    File? xyz
    String your_structure_dot_pqr
    String? arg
  }
  command <<<
    elsize \
      ~{your_structure_dot_pqr} \
      ~{arg} \
      ~{if (det) then "-det" else ""} \
      ~{if defined(ell) then ("-ell " +  '"' + ell + '"') else ""} \
      ~{if defined(elf) then ("-elf " +  '"' + elf + '"') else ""} \
      ~{if defined(abc) then ("-abc " +  '"' + abc + '"') else ""} \
      ~{if defined(tab) then ("-tab " +  '"' + tab + '"') else ""} \
      ~{if defined(hea) then ("-hea " +  '"' + hea + '"') else ""} \
      ~{if defined(deb) then ("-deb " +  '"' + deb + '"') else ""} \
      ~{if defined(xyz) then ("-xyz " +  '"' + xyz + '"') else ""}
  >>>
  parameter_meta {
    det: "(default) gives A_det,"
    ell: "A_ell (elliptic integral),"
    elf: "A_elf (elementary functions approximation to A_ell,\\nnormally less than 0.1A apart),"
    abc: "a, b, c (semiaxes of the effective ellipsoid,\\njust out of curiousity)"
    tab: "PQR file name and all of the above into a table without header"
    hea: "same table as -tab but with a header"
    deb: "same as -tab with some extra (debugging) information"
    xyz: "a file containing only XYZ coordinates as input."
    your_structure_dot_pqr: ""
    arg: ""
  }
  output {
    File out_stdout = stdout()
  }
}