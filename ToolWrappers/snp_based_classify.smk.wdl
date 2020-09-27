version 1.0

task SnpBasedClassifysmk {
  command <<<
    snp_based_classify_smk
  >>>
  output {
    File out_stdout = stdout()
  }
}