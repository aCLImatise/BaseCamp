version 1.0

task WigToBigWig {
  command <<<
    wigToBigWig
  >>>
  output {
    File out_stdout = stdout()
  }
}