version 1.0

task Textfile.sh {
  input {
    File file
    String start_line
    String stop_line
  }
  command <<<
    textfile.sh \
      ~{file} \
      ~{start_line} \
      ~{stop_line}
  >>>
  parameter_meta {
    file: ""
    start_line: ""
    stop_line: ""
  }
}