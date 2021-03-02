version 1.0

task ScHicInfo {
  input {
    String? schic_matrix_scool
    String sch_i_c
    String var_2
  }
  command <<<
    scHicInfo \
      ~{sch_i_c} \
      ~{var_2} \
      ~{if defined(schic_matrix_scool) then ("--matrix " +  '"' + schic_matrix_scool + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    schic_matrix_scool: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    sch_i_c: ""
    var_2: ""
  }
  output {
    File out_stdout = stdout()
  }
}