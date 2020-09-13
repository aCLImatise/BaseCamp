version 1.0

task AssemblyStatistics {
  command <<<
    AssemblyStatistics
  >>>
  output {
    File out_stdout = stdout()
  }
}