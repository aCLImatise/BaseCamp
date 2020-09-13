version 1.0

task Homer2 {
  command <<<
    homer2
  >>>
  output {
    File out_stdout = stdout()
  }
}