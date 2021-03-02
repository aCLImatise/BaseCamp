version 1.0

task Runningcmp {
  input {
    Int file_one
    Int file_two
  }
  command <<<
    running_cmp \
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