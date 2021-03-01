version 1.0

task GimmeTaxapy {
  command <<<
    gimme_taxa_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}