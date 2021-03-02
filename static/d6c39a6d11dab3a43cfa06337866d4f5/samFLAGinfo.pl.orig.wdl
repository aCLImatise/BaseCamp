version 1.0

task SamFLAGinfoplorig {
  command <<<
    samFLAGinfo_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}