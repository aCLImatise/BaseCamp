version 1.0

task ParallelToolspy {
  command <<<
    parallel_tools_py
  >>>
  output {
    File out_stdout = stdout()
  }
}