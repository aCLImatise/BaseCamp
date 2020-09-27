version 1.0

task ProBAMENSEMBLpy {
  command <<<
    proBAM_ENSEMBL_py
  >>>
  output {
    File out_stdout = stdout()
  }
}