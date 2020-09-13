version 1.0

task AfplotRegions {
  command <<<
    afplot regions
  >>>
  output {
    File out_stdout = stdout()
  }
}