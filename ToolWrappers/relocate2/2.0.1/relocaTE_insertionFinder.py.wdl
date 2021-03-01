version 1.0

task RelocaTEInsertionFinderpy {
  command <<<
    relocaTE_insertionFinder_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}