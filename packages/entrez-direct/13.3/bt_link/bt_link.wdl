version 1.0

task Btlink {
  command <<<
    bt_link
  >>>
  output {
    File out_stdout = stdout()
  }
}