version 1.0

task STViewerpy {
  command <<<
    STViewer_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}