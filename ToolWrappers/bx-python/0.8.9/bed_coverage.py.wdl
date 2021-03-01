version 1.0

task BedCoveragepy {
  command <<<
    bed_coverage_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}