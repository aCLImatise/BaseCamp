version 1.0

task Link {
  input {
    Int file_one
    Int file_two
  }
  command <<<
    link \
      ~{file_one} \
      ~{file_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}