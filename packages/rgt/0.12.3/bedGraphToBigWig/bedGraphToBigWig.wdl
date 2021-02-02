version 1.0

task BedGraphToBigWig {
  command <<<
    bedGraphToBigWig
  >>>
  output {
    File out_stdout = stdout()
  }
}