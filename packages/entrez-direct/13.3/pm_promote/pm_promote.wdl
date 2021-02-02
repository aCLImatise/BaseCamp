version 1.0

task Pmpromote {
  command <<<
    pm_promote
  >>>
  output {
    File out_stdout = stdout()
  }
}