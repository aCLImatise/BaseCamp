version 1.0

task CreateEndPairspl {
  command <<<
    create_end_pairs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}