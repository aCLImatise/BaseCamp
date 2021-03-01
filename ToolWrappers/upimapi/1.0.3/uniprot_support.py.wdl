version 1.0

task UniprotSupportpy {
  command <<<
    uniprot_support_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}