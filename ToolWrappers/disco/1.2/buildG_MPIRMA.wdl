version 1.0

task BuildGMPIRMA {
  command <<<
    buildG_MPIRMA
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}