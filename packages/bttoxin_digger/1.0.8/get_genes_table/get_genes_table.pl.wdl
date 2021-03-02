version 1.0

task GetGenesTablepl {
  command <<<
    get_genes_table_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/bttoxin_digger:1.0.8--0"
  }
  output {
    File out_stdout = stdout()
  }
}