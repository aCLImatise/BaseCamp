version 1.0

task MergeSqMasspy {
  command <<<
    mergeSqMass_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}