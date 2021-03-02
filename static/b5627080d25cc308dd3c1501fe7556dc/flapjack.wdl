version 1.0

task Flapjack {
  command <<<
    flapjack
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}