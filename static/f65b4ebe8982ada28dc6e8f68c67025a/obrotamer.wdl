version 1.0

task Obrotamer {
  input {
    File file
  }
  command <<<
    obrotamer \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
}