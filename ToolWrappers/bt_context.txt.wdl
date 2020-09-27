version 1.0

task Btcontexttxt {
  command <<<
    bt_context_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}