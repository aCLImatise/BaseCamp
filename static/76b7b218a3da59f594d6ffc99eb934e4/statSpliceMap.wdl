version 1.0

task StatSpliceMap {
  command <<<
    statSpliceMap
  >>>
  output {
    File out_stdout = stdout()
  }
}