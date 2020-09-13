version 1.0

task LineageFinderpy {
  command <<<
    lineage_finder_py
  >>>
  output {
    File out_stdout = stdout()
  }
}