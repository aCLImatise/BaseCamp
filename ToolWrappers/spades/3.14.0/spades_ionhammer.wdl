version 1.0

task Spadesionhammer {
  command <<<
    spades_ionhammer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}