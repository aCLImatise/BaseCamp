version 1.0

task ParallelBlatPythonpy {
  command <<<
    parallel_blat_python_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}