version 1.0

task Mcxmap {
  input {
    File? imx
    File? tab
    File? write_output_file
    Int? mul
    Int? c_mul
    Int? r_mul
    Int? shift
    Int? c_shift
    Int? r_shift
    String? map_domain_indices
    String? cmap
    String? r_map
    String? map_i
    String? cmap_i
    String? r_map_i
    File? make_map
    File? make_map_c
    File? make_map_r
    Boolean? help
  }
  command <<<
    mcxmap \
      ~{if defined(imx) then ("-imx " +  '"' + imx + '"') else ""} \
      ~{if defined(tab) then ("-tab " +  '"' + tab + '"') else ""} \
      ~{if defined(write_output_file) then ("-o " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(mul) then ("-mul " +  '"' + mul + '"') else ""} \
      ~{if defined(c_mul) then ("-cmul " +  '"' + c_mul + '"') else ""} \
      ~{if defined(r_mul) then ("-rmul " +  '"' + r_mul + '"') else ""} \
      ~{if defined(shift) then ("-shift " +  '"' + shift + '"') else ""} \
      ~{if defined(c_shift) then ("-cshift " +  '"' + c_shift + '"') else ""} \
      ~{if defined(r_shift) then ("-rshift " +  '"' + r_shift + '"') else ""} \
      ~{if defined(map_domain_indices) then ("-map " +  '"' + map_domain_indices + '"') else ""} \
      ~{if defined(cmap) then ("-cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(r_map) then ("-rmap " +  '"' + r_map + '"') else ""} \
      ~{if defined(map_i) then ("-mapi " +  '"' + map_i + '"') else ""} \
      ~{if defined(cmap_i) then ("-cmapi " +  '"' + cmap_i + '"') else ""} \
      ~{if defined(r_map_i) then ("-rmapi " +  '"' + r_map_i + '"') else ""} \
      ~{if defined(make_map) then ("-make-map " +  '"' + make_map + '"') else ""} \
      ~{if defined(make_map_c) then ("-make-mapc " +  '"' + make_map_c + '"') else ""} \
      ~{if defined(make_map_r) then ("-make-mapr " +  '"' + make_map_r + '"') else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    imx: "use matrix from file <fname>"
    tab: "use tab file from <fname>"
    write_output_file: "write output to file <fname>"
    mul: "multiply domain indices by <num>"
    c_mul: "multiply column indices by <num>"
    r_mul: "multiply row indices by <num>"
    shift: "shift domain indices by <num>"
    c_shift: "shift column indices by <num>"
    r_shift: "shift row indices by <num>"
    map_domain_indices: "map domain indices"
    cmap: "map column indices"
    r_map: "map row indices"
    map_i: "map domain indices with inverse"
    cmap_i: "map column indices with inverse"
    r_map_i: "map row indices with inverse"
    make_map: "canonify domain indices, write map file"
    make_map_c: "canonify column indices, write map file"
    make_map_r: "canonify row indices, write map file"
    help: "print this help"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}