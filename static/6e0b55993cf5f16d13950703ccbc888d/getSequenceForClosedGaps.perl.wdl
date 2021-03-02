version 1.0

task GetSequenceForClosedGapsperl {
  command <<<
    getSequenceForClosedGaps_perl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}