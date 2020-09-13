version 1.0

task Respgen {
  command <<<
    respgen
  >>>
  output {
    File out_stdout = stdout()
  }
}