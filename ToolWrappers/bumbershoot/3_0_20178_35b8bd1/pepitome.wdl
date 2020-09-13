version 1.0

task Pepitome {
  command <<<
    pepitome
  >>>
  output {
    File out_stdout = stdout()
  }
}