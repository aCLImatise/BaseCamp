version 1.0

task Blossom5 {
  input {
    String see
    String usage_dot_txt
  }
  command <<<
    blossom5 \
      ~{see} \
      ~{usage_dot_txt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    see: ""
    usage_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}