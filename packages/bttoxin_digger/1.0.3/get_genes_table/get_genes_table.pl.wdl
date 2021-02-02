version 1.0

task GetGenesTablepl {
  command <<<
    get_genes_table_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}