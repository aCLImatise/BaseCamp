version 1.0

task Fgapm {
  command <<<
    fgap_m
  >>>
  output {
    File out_stdout = stdout()
  }
}