version 1.0

task GetSequenceForClosedGapsperl {
  command <<<
    getSequenceForClosedGaps_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}