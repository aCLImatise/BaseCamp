version 1.0

task GetMappableRegions {
  command <<<
    getMappableRegions
  >>>
  output {
    File out_stdout = stdout()
  }
}