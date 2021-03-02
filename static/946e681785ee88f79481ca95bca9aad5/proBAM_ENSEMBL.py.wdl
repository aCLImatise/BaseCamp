version 1.0

task ProBAMENSEMBLpy {
  command <<<
    proBAM_ENSEMBL_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}