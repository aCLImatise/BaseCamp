version 1.0

task Jaffaassembly {
  command <<<
    jaffa_assembly
  >>>
  output {
    File out_stdout = stdout()
  }
}