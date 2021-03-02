version 1.0

task MsToGlf {
  command <<<
    msToGlf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}