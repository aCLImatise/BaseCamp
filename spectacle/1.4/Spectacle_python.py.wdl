version 1.0

task SpectaclePythonpy {
  command <<<
    Spectacle_python_py
  >>>
  output {
    File out_stdout = stdout()
  }
}