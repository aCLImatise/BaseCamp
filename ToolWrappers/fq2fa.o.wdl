version 1.0

task Fq2fao {
  command <<<
    fq2fa_o
  >>>
  output {
    File out_stdout = stdout()
  }
}