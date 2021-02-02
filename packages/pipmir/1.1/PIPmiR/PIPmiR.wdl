version 1.0

task PIPmiR {
  command <<<
    PIPmiR
  >>>
  output {
    File out_stdout = stdout()
  }
}