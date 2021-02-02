version 1.0

task ExtractUnjoinedPairspl {
  command <<<
    extract_unjoined_pairs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}