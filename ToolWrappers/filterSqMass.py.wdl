version 1.0

task FilterSqMasspy {
  command <<<
    filterSqMass_py
  >>>
  output {
    File out_stdout = stdout()
  }
}