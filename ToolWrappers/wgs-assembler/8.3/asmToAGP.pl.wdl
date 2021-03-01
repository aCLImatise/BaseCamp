version 1.0

task AsmToAGPpl {
  command <<<
    asmToAGP_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}