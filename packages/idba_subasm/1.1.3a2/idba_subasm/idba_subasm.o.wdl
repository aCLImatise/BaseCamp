version 1.0

task IdbaSubasmo {
  command <<<
    idba_subasm_o
  >>>
  output {
    File out_stdout = stdout()
  }
}