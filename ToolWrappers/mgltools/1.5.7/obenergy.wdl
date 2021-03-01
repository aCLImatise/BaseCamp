version 1.0

task Obenergy {
  command <<<
    obenergy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}