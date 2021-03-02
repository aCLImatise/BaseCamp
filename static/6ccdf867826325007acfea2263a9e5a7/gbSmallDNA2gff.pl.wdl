version 1.0

task GbSmallDNA2gffpl {
  command <<<
    gbSmallDNA2gff_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}