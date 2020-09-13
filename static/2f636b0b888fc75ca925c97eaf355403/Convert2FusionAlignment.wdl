version 1.0

task Convert2FusionAlignment {
  command <<<
    Convert2FusionAlignment
  >>>
  output {
    File out_stdout = stdout()
  }
}