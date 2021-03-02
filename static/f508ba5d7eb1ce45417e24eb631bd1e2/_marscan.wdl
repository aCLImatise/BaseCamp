version 1.0

task Marscan {
  command <<<
    _marscan
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}