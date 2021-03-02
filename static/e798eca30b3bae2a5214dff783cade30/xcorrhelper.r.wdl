version 1.0

task Xcorrhelperr {
  command <<<
    xcorrhelper_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}