version 1.0

task SpliceMap {
  command <<<
    SpliceMap
  >>>
  output {
    File out_stdout = stdout()
  }
}