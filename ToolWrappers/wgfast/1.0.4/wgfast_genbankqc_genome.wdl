version 1.0

task WgfastGenbankqcGenome {
  command <<<
    wgfast_genbankqc genome
  >>>
  output {
    File out_stdout = stdout()
  }
}