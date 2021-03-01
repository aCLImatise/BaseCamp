version 1.0

task Sgen {
  command <<<
    sgen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}