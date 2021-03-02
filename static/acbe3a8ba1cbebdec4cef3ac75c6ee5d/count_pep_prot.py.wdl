version 1.0

task CountPepProtpy {
  command <<<
    count_pep_prot_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}