version 1.0

task BuildGMPIRMA {
  command <<<
    buildG_MPIRMA
  >>>
  output {
    File out_stdout = stdout()
  }
}