version 1.0

task CapCMAP {
  command <<<
    capC_MAP
  >>>
  output {
    File out_stdout = stdout()
  }
}