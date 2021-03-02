version 1.0

task EasyInstall {
  command <<<
    easy_install
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}