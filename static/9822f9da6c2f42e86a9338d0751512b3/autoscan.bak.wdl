version 1.0

task Autoscanbak {
  command <<<
    autoscan_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}