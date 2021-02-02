version 1.0

task TomboTextOutput {
  command <<<
    tombo text_output
  >>>
  output {
    File out_stdout = stdout()
  }
}