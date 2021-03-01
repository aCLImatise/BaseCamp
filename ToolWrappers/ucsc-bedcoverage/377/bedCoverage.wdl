version 1.0

task BedCoverage {
  command <<<
    bedCoverage
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}