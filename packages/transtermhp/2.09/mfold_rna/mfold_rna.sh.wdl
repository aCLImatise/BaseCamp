version 1.0

task MfoldRnash {
  command <<<
    mfold_rna_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}