version 1.0

task ArrowAnnotations {
  command <<<
    arrow annotations
  >>>
  output {
    File out_stdout = stdout()
  }
}