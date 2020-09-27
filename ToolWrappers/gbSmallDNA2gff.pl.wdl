version 1.0

task GbSmallDNA2gffpl {
  command <<<
    gbSmallDNA2gff_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}