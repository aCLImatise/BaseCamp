version 1.0

task Cwltoil {
  command <<<
    cwltoil
  >>>
  output {
    File out_stdout = stdout()
  }
}