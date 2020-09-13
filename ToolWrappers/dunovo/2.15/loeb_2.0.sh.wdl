version 1.0

task Loeb20sh {
  command <<<
    loeb_2_0_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}