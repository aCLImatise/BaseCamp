version 1.0

task DockingPy {
  command <<<
    docking_py
  >>>
  output {
    File out_stdout = stdout()
  }
}