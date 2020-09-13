version 1.0

task OutputJoinedPairsperl {
  command <<<
    outputJoinedPairs_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}