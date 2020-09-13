version 1.0

task TaxonFilterpy {
  command <<<
    taxon_filter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}