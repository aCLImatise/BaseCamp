version 1.0

task PslCheck {
  command <<<
    pslCheck
  >>>
  output {
    File out_stdout = stdout()
  }
}