version 1.0

task Randrep {
  command <<<
    randrep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}