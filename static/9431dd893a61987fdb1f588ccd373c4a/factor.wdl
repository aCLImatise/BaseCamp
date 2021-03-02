version 1.0

task Factor {
  input {
    Int? number
  }
  command <<<
    factor \
      ~{number}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number: ""
  }
  output {
    File out_stdout = stdout()
  }
}