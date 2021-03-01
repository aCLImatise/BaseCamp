version 1.0

task IdbaSubasmo {
  command <<<
    idba_subasm_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}