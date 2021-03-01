version 1.0

task SnpBasedClassifysmk {
  command <<<
    snp_based_classify_smk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}