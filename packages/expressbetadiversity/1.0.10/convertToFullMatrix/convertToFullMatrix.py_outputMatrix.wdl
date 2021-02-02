version 1.0

task ConvertToFullMatrixpyOutputMatrix {
  input {
    String convert_to_full_matrix_do_tpy
    String input_matrix
    String output_matrix
  }
  command <<<
    convertToFullMatrix_py outputMatrix \
      ~{convert_to_full_matrix_do_tpy} \
      ~{input_matrix} \
      ~{output_matrix}
  >>>
  parameter_meta {
    convert_to_full_matrix_do_tpy: ""
    input_matrix: ""
    output_matrix: ""
  }
  output {
    File out_stdout = stdout()
  }
}