version 1.0

task STViewerpy {
  command <<<
    STViewer_py
  >>>
  output {
    File out_stdout = stdout()
  }
}