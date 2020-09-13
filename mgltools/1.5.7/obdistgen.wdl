version 1.0

task Obdistgen {
  command <<<
    obdistgen
  >>>
  output {
    File out_stdout = stdout()
  }
}