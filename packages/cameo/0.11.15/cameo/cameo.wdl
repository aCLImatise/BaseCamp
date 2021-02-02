version 1.0

task Cameo {
  command <<<
    cameo
  >>>
  output {
    File out_stdout = stdout()
  }
}