version 1.0

task CreateEndPairsperl {
  command <<<
    create_end_pairs_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}