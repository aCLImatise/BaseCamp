version 1.0

task Simple {
  command <<<
    simple
  >>>
  output {
    File out_stdout = stdout()
  }
}