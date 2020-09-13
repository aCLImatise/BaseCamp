version 1.0

task AssemblePairspy {
  command <<<
    AssemblePairs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}