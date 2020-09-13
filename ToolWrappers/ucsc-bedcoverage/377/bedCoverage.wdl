version 1.0

task BedCoverage {
  command <<<
    bedCoverage
  >>>
  output {
    File out_stdout = stdout()
  }
}