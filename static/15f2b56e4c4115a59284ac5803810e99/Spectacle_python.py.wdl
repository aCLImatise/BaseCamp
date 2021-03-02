version 1.0

task SpectaclePythonpy {
  command <<<
    Spectacle_python_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}