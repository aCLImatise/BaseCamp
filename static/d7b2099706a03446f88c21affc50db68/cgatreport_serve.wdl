version 1.0

task Cgatreportserve {
  command <<<
    cgatreport_serve
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}