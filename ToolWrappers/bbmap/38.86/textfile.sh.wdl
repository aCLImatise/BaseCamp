version 1.0

task Textfilesh {
  input {
    File var_file
    String start_line
    String stop_line
  }
  command <<<
    textfile_sh \
      ~{var_file} \
      ~{start_line} \
      ~{stop_line}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_file: ""
    start_line: ""
    stop_line: ""
  }
  output {
    File out_stdout = stdout()
  }
}