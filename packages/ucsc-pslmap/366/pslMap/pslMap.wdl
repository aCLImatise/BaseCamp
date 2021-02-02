version 1.0

task PslMap {
  command <<<
    pslMap
  >>>
  output {
    File out_stdout = stdout()
  }
}