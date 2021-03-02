version 1.0

task CirclatorCommand {
  input {
    String required_arguments
  }
  command <<<
    circlator command \
      ~{required_arguments}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    required_arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}