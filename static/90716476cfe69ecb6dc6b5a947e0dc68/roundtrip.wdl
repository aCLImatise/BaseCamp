version 1.0

task Roundtrip {
  input {
    File file_one
    File file_two
  }
  command <<<
    roundtrip \
      ~{file_one} \
      ~{file_two}
  >>>
  parameter_meta {
    file_one: ""
    file_two: ""
  }
}