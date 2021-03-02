version 1.0

task GetTrinityGeneToTransMappl {
  command <<<
    get_Trinity_gene_to_trans_map_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/trinity:2.11.0--h5ef6573_1"
  }
  output {
    File out_stdout = stdout()
  }
}