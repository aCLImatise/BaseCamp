version 1.0

task MasurcaSuperReadspm {
  command <<<
    MasurcaSuperReads_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}