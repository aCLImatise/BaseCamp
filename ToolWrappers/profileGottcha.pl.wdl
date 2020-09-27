version 1.0

task ProfileGottchapl {
  command <<<
    profileGottcha_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}