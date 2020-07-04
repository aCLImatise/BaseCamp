version 1.0

task Processspeed.sh {
  input {
    File file
  }
  command <<<
    processspeed.sh \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
}