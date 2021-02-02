version 1.0

task ScHicInfo {
  input {
    String? schic_matrix_m
    String sch_i_c
    String var_2
  }
  command <<<
    scHicInfo \
      ~{sch_i_c} \
      ~{var_2} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""}
  >>>
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    sch_i_c: ""
    var_2: ""
  }
  output {
    File out_stdout = stdout()
  }
}