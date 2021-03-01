version 1.0

task Mglobenergy {
  command <<<
    mglobenergy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}