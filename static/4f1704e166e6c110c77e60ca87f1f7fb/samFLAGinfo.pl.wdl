version 1.0

task SamFLAGinfopl {
  command <<<
    samFLAGinfo_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}