version 1.0

task FilterGottchapl {
  command <<<
    filterGottcha_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}