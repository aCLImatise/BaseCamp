version 1.0

task Cython {
  command <<<
    cython
  >>>
  output {
    File out_stdout = stdout()
  }
}