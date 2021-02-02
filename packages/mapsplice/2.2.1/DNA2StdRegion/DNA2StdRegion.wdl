version 1.0

task DNA2StdRegion {
  command <<<
    DNA2StdRegion
  >>>
  output {
    File out_stdout = stdout()
  }
}