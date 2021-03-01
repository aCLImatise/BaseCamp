version 1.0

task TestmgcvinstalledR {
  command <<<
    test_mgcv_installed_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}