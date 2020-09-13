version 1.0

task GimmeTaxapy {
  command <<<
    gimme_taxa_py
  >>>
  output {
    File out_stdout = stdout()
  }
}