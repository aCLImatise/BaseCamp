version 1.0

task CrosstableGeneIds {
  command <<<
    crosstable_gene_ids
  >>>
  output {
    File out_stdout = stdout()
  }
}