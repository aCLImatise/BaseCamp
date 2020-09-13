version 1.0

task GetSequenceForLocallyClosedGapsperl {
  command <<<
    getSequenceForLocallyClosedGaps_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}