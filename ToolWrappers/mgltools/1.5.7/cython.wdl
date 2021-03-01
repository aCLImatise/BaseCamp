version 1.0

task Cython {
  command <<<
    cython
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}