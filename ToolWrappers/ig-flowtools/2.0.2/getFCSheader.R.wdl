version 1.0

task GetFCSheaderR {
  command <<<
    getFCSheader_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}