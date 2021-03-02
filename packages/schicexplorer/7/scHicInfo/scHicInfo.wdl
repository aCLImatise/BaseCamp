version 1.0

task ScHicInfo {
  input {
    String? schic_matrix_scool
    File? write_out_names
    String sch_i_c
    String var_3
  }
  command <<<
    scHicInfo \
      ~{sch_i_c} \
      ~{var_3} \
      ~{if defined(schic_matrix_scool) then ("--matrix " +  '"' + schic_matrix_scool + '"') else ""} \
      ~{if defined(write_out_names) then ("--writeOutNames " +  '"' + write_out_names + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    schic_matrix_scool: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    write_out_names: "Write out the names of the individual cells to the\\nhere specified file. (default: None)"
    sch_i_c: ""
    var_3: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_out_names = "${in_write_out_names}"
  }
}