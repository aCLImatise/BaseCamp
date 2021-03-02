version 1.0

task KeggPathwayMappy {
  command <<<
    kegg_pathway_map_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/keggcharter:0.2.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}