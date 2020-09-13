version 1.0

task Cgatreportserve {
  command <<<
    cgatreport_serve
  >>>
  output {
    File out_stdout = stdout()
  }
}