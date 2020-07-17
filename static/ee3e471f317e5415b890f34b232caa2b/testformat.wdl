version 1.0

task Testformat.sh {
  input {
    File file
  }
  command <<<
    testformat.sh \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
}