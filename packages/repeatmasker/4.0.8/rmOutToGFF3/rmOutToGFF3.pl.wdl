version 1.0

task RmOutToGFF3pl {
  command <<<
    rmOutToGFF3_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}