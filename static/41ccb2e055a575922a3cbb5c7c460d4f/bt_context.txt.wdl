version 1.0

task Btcontexttxt {
  command <<<
    bt_context_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}