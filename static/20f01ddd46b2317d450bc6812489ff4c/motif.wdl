version 1.0

task Motif {
  command <<<
    motif
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}