version 1.0

task Goapplyxslt {
  command <<<
    go_apply_xslt
  >>>
  output {
    File out_stdout = stdout()
  }
}