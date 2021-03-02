version 1.0

task ParallelToolspy {
  command <<<
    parallel_tools_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}