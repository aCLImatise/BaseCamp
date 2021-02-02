version 1.0

task Factor {
  input {
    Int? number
  }
  command <<<
    factor \
      ~{number}
  >>>
  parameter_meta {
    number: ""
  }
  output {
    File out_stdout = stdout()
  }
}