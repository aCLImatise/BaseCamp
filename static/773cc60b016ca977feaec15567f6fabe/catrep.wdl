version 1.0

task Catrep {
  command <<<
    catrep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}