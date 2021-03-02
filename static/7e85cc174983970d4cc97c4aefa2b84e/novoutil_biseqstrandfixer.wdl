version 1.0

task NovoutilBiseqstrandfixer {
  input {
    String input_dots_am
    String output_dots_am
  }
  command <<<
    novoutil biseqstrandfixer \
      ~{input_dots_am} \
      ~{output_dots_am}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dots_am: ""
    output_dots_am: ""
  }
  output {
    File out_stdout = stdout()
  }
}