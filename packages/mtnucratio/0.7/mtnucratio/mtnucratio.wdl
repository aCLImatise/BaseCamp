version 1.0

task Mtnucratio {
  command <<<
    mtnucratio
  >>>
  output {
    File out_stdout = stdout()
  }
}