version 1.0

task Pl2pm {
  command <<<
    pl2pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}