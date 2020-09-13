version 1.0

task Contrast {
  command <<<
    contrast
  >>>
  output {
    File out_stdout = stdout()
  }
}