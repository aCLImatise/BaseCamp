version 1.0

task Pl2pm {
  command <<<
    pl2pm
  >>>
  output {
    File out_stdout = stdout()
  }
}