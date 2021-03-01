version 1.0

task EasyInstall27 {
  command <<<
    easy_install_2_7
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}