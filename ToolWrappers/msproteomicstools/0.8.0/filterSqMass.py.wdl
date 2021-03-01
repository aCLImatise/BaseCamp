version 1.0

task FilterSqMasspy {
  command <<<
    filterSqMass_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}