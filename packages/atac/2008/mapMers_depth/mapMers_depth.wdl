version 1.0

task MapMersdepth {
  command <<<
    mapMers_depth
  >>>
  output {
    File out_stdout = stdout()
  }
}