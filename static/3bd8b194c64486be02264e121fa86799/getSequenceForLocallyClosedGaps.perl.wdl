version 1.0

task GetSequenceForLocallyClosedGapsperl {
  command <<<
    getSequenceForLocallyClosedGaps_perl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}