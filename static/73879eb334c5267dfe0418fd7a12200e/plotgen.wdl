version 1.0

task Plotgen {
  command <<<
    plotgen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}