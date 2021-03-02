version 1.0

task TestInstall {
  command <<<
    test_install
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}