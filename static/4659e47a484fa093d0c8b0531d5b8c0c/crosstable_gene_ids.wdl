version 1.0

task CrosstableGeneIds {
  command <<<
    crosstable_gene_ids
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}