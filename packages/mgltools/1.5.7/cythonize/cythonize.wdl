version 1.0

task Cythonize {
  command <<<
    cythonize
  >>>
  output {
    File out_stdout = stdout()
  }
}