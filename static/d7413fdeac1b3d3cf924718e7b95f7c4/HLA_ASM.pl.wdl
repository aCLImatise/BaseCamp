version 1.0

task HLAASMpl {
  command <<<
    HLA_ASM_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}