version 1.0

task ProBAMBiomartpy {
  command <<<
    proBAM_biomart_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}