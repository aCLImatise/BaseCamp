version 1.0

task HybridMin {
  input {
    File file_one
    File file_two
  }
  command <<<
    hybrid-min \
      ~{file_one} \
      ~{file_two}
  >>>
  parameter_meta {
    file_one: ""
    file_two: ""
  }
}