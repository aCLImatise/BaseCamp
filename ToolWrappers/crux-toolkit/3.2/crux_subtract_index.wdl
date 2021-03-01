version 1.0

task CruxSubtractindex {
  input {
    Int tide_index_one
    Int tide_index_two
  }
  command <<<
    crux subtract_index \
      ~{tide_index_one} \
      ~{tide_index_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tide_index_one: ""
    tide_index_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}