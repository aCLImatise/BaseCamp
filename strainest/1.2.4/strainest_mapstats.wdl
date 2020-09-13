version 1.0

task StrainestMapstats {
  command <<<
    strainest mapstats
  >>>
  output {
    File out_stdout = stdout()
  }
}