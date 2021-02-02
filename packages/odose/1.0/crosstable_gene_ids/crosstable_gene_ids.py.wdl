version 1.0

task CrosstableGeneIdspy {
  command <<<
    crosstable_gene_ids_py
  >>>
  output {
    File out_stdout = stdout()
  }
}