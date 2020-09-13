version 1.0

task Astalavista {
  command <<<
    astalavista
  >>>
  output {
    File out_stdout = stdout()
  }
}