version 1.0

task Sgen {
  command <<<
    sgen
  >>>
  output {
    File out_stdout = stdout()
  }
}