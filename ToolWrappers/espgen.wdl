version 1.0

task Espgen {
  command <<<
    espgen
  >>>
  output {
    File out_stdout = stdout()
  }
}