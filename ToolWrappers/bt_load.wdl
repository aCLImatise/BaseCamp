version 1.0

task Btload {
  command <<<
    bt_load
  >>>
  output {
    File out_stdout = stdout()
  }
}