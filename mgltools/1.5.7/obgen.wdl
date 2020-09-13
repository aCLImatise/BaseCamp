version 1.0

task Obgen {
  command <<<
    obgen
  >>>
  output {
    File out_stdout = stdout()
  }
}