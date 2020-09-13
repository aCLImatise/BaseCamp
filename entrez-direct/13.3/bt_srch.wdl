version 1.0

task Btsrch {
  command <<<
    bt_srch
  >>>
  output {
    File out_stdout = stdout()
  }
}