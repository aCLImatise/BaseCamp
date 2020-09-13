version 1.0

task SystemValueTupledll {
  command <<<
    System_ValueTuple_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}