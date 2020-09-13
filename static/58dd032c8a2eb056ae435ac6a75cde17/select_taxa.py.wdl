version 1.0

task SelectTaxapy {
  command <<<
    select_taxa_py
  >>>
  output {
    File out_stdout = stdout()
  }
}