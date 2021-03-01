version 1.0

task AssemblyStatistics {
  command <<<
    AssemblyStatistics
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}