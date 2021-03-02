version 1.0

task FilterGottchapl {
  command <<<
    filterGottcha_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}