version 1.0

task Pmcollect {
  command <<<
    pm_collect
  >>>
  output {
    File out_stdout = stdout()
  }
}