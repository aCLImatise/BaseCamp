version 1.0

task Pirs {
  command <<<
    pirs
  >>>
  output {
    File out_stdout = stdout()
  }
}