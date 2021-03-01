version 1.0

task TransposonPSIpl {
  command <<<
    transposonPSI_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}