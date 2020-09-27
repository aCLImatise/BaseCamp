version 1.0

task RapidStatsr {
  command <<<
    rapidStats_r
  >>>
  output {
    File out_stdout = stdout()
  }
}