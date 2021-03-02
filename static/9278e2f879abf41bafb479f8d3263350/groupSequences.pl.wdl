version 1.0

task GroupSequencespl {
  command <<<
    groupSequences_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}