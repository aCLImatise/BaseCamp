version 1.0

task Link {
  input {
    File file_one
    File file_two
  }
  command <<<
    link \
      ~{file_one} \
      ~{file_two}
  >>>
  parameter_meta {
    file_one: ""
    file_two: ""
  }
}