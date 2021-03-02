version 1.0

task PslCheck {
  command <<<
    pslCheck
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}