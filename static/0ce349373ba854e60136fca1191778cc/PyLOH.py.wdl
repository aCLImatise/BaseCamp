version 1.0

task PyLOHpy {
  command <<<
    PyLOH_py
  >>>
  output {
    File out_stdout = stdout()
  }
}