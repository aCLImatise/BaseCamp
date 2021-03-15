version 1.0

task GetTrinityGeneToTransMappl {
  command <<<
    get_Trinity_gene_to_trans_map_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/trinity:2.12.0--h5ef6573_0"
  }
  output {
    File out_stdout = stdout()
  }
}