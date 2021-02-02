version 1.0

task RelocaTEInsertionFinderpy {
  command <<<
    relocaTE_insertionFinder_py
  >>>
  output {
    File out_stdout = stdout()
  }
}