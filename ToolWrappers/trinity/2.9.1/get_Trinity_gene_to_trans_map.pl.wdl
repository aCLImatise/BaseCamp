version 1.0

task GetTrinityGeneToTransMappl {
  command <<<
    get_Trinity_gene_to_trans_map_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}