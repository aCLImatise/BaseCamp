version 1.0

task ProfileGottchapl {
  command <<<
    profileGottcha_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}