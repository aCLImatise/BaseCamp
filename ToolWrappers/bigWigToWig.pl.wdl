version 1.0

task BigWigToWigpl {
  command <<<
    bigWigToWig_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}