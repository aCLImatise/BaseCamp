version 1.0

task CreateFastaSuperReadSequences {
  command <<<
    createFastaSuperReadSequences
  >>>
  output {
    File out_stdout = stdout()
  }
}