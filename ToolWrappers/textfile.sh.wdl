version 1.0

task Textfilesh {
  input {
    File file
    String start_line
    String stop_line
  }
  command <<<
    textfile_sh \
      ~{file} \
      ~{start_line} \
      ~{stop_line}
  >>>
  parameter_meta {
    file: ""
    start_line: ""
    stop_line: ""
  }
  output {
    File out_stdout = stdout()
  }
}