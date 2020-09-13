version 1.0

task InstallToolspy {
  command <<<
    install_tools_py
  >>>
  output {
    File out_stdout = stdout()
  }
}