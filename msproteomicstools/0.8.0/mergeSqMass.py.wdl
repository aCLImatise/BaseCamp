version 1.0

task MergeSqMasspy {
  command <<<
    mergeSqMass_py
  >>>
  output {
    File out_stdout = stdout()
  }
}