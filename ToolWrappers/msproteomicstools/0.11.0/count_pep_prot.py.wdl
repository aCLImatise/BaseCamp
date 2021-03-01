version 1.0

task CountPepProtpy {
  command <<<
    count_pep_prot_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1"
  }
  output {
    File out_stdout = stdout()
  }
}