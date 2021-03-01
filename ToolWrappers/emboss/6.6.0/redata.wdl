version 1.0

task Redata {
  command <<<
    redata
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}