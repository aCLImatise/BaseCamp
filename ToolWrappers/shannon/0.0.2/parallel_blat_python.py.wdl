version 1.0

task ParallelBlatPythonpy {
  command <<<
    parallel_blat_python_py
  >>>
  output {
    File out_stdout = stdout()
  }
}