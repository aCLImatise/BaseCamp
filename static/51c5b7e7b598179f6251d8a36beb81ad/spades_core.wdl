version 1.0

task Spadescore {
  command <<<
    spades_core
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}