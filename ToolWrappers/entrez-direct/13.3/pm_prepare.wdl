version 1.0

task Pmprepare {
  command <<<
    pm_prepare
  >>>
  output {
    File out_stdout = stdout()
  }
}