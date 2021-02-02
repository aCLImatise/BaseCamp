version 1.0

task MakeBigWigpl {
  command <<<
    makeBigWig_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}