version 1.0

task HLAASMpl {
  command <<<
    HLA_ASM_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}