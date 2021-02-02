version 1.0

task Convertformat {
  command <<<
    convertformat
  >>>
  output {
    File out_stdout = stdout()
  }
}