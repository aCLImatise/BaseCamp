version 1.0

task Dvipdf {
  input {
    String? options_dot_dot_dot
    String input_dot_dvi
    String? output_dot_pdf
  }
  command <<<
    dvipdf \
      ~{options_dot_dot_dot} \
      ~{input_dot_dvi} \
      ~{output_dot_pdf}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options_dot_dot_dot: ""
    input_dot_dvi: ""
    output_dot_pdf: ""
  }
  output {
    File out_stdout = stdout()
  }
}