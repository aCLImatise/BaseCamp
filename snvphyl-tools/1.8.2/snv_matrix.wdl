version 1.0

task SnvMatrix.pl {
  input {
    Boolean? print_more_information
    Boolean? prints_matrix_passed
    String? snv_align_dot_phy
  }
  command <<<
    snv_matrix.pl \
      ~{snv_align_dot_phy} \
      ~{true="-v" false="" print_more_information} \
      ~{true="-o" false="" prints_matrix_passed}
  >>>
  parameter_meta {
    print_more_information: ":  Print more information (to stderr)"
    prints_matrix_passed: ":  Prints matrix to passed file"
    snv_align_dot_phy: ""
  }
}