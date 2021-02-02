version 1.0

task Tigmintarcstsv {
  command <<<
    tigmint_arcs_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}