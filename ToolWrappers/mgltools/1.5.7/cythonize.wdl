version 1.0

task Cythonize {
  command <<<
    cythonize
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}