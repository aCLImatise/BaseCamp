version 1.0

task Pmindex {
  command <<<
    pm_index
  >>>
  output {
    File out_stdout = stdout()
  }
}