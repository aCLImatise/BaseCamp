version 1.0

task MsHOT2glf {
  command <<<
    msHOT2glf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}