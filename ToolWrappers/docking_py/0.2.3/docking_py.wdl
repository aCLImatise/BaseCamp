version 1.0

task DockingPy {
  command <<<
    docking_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}