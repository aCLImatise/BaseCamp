version 1.0

task SelectTaxapy {
  command <<<
    select_taxa_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}