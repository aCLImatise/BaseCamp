version 1.0

task MergeDatapl {
  input {
    Int file_one
    Int file_two
  }
  command <<<
    mergeData_pl \
      ~{file_one} \
      ~{file_two}
  >>>
  parameter_meta {
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}