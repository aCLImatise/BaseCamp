version 1.0

task MfoldRnash {
  command <<<
    mfold_rna_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}