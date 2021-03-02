version 1.0

task FCPInstallpy {
  command <<<
    FCP_install_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}