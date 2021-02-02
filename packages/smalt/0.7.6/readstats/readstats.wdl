version 1.0

task Readstats {
  command <<<
    readstats
  >>>
  output {
    File out_stdout = stdout()
  }
}