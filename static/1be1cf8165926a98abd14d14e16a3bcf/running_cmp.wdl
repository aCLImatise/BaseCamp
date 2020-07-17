version 1.0

task RunningCmp {
  input {
    File file_one
    File file_two
  }
  command <<<
    running-cmp \
      ~{file_one} \
      ~{file_two}
  >>>
  parameter_meta {
    file_one: ""
    file_two: ""
  }
}