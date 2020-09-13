version 1.0

task Svimasm {
  command <<<
    svim_asm
  >>>
  output {
    File out_stdout = stdout()
  }
}