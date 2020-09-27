version 1.0

task Btsave {
  command <<<
    bt_save
  >>>
  output {
    File out_stdout = stdout()
  }
}