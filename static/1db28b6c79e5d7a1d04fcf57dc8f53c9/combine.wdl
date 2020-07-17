version 1.0

task Combine {
  input {
    File file_one
    String op
    File file_two
  }
  command <<<
    combine \
      ~{file_one} \
      ~{op} \
      ~{file_two}
  >>>
  parameter_meta {
    file_one: ""
    op: ""
    file_two: ""
  }
}