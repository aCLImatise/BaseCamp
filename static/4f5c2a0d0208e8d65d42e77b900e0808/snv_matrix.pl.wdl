version 1.0

task SnvMatrixpl {
  input {
    Boolean? print_more_information
    Boolean? prints_matrix_passed
    String? snv_align_dot_phy
  }
  command <<<
    snv_matrix_pl \
      ~{snv_align_dot_phy} \
      ~{if (print_more_information) then "-v" else ""} \
      ~{if (prints_matrix_passed) then "-o" else ""}
  >>>
  parameter_meta {
    print_more_information: ":  Print more information (to stderr)"
    prints_matrix_passed: ":  Prints matrix to passed file"
    snv_align_dot_phy: ""
  }
  output {
    File out_stdout = stdout()
  }
}