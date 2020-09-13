version 1.0

task Kimura80 {
  command <<<
    kimura80
  >>>
  output {
    File out_stdout = stdout()
  }
}