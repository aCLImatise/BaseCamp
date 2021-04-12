version 1.0

task ParallelToolspy {
  command <<<
    parallel_tools_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0"
  }
  output {
    File out_stdout = stdout()
  }
}