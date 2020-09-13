version 1.0

task FCPInstallpy {
  command <<<
    FCP_install_py
  >>>
  output {
    File out_stdout = stdout()
  }
}