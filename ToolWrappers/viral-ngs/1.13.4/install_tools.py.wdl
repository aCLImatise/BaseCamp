version 1.0

task InstallToolspy {
  command <<<
    install_tools_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}