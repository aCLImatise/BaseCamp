version 1.0

task Spadeshammer {
  command <<<
    spades_hammer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}