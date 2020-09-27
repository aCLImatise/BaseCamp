version 1.0

task ProBAMBiomartpy {
  command <<<
    proBAM_biomart_py
  >>>
  output {
    File out_stdout = stdout()
  }
}