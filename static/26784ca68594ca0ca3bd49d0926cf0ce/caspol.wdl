version 1.0

task Caspol {
  input {
    String? arguments
  }
  command <<<
    caspol \
      ~{arguments}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}