version 1.0

task Fqc {
  input {
    File file_n
  }
  command <<<
    fqc \
      ~{file_n}
  >>>
  parameter_meta {
    file_n: ""
  }
}