version 1.0

task CreateFastaSuperReadSequences {
  command <<<
    createFastaSuperReadSequences
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}