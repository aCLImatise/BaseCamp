version 1.0

task MafMeanLengthUngappedPiecepy {
  command <<<
    maf_mean_length_ungapped_piece_py
  >>>
  output {
    File out_stdout = stdout()
  }
}