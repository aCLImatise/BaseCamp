version 1.0

task PhylocsfCheckpy {
  command <<<
    phylocsf_check_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}