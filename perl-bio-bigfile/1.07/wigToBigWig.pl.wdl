version 1.0

task WigToBigWigpl {
  command <<<
    wigToBigWig_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}