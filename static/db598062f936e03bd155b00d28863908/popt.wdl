version 1.0

task Popt {
  command <<<
    popt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}