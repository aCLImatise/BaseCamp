version 1.0

task Translate {
  command <<<
    translate
  >>>
  output {
    File out_stdout = stdout()
  }
}