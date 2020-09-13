version 1.0

task PybelSerialize {
  input {
    File? csv
    File? s_if
    File? g_sea
    File? graph_ml
    File? json
    File? bel
    File path
  }
  command <<<
    pybel serialize \
      ~{path} \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""} \
      ~{if defined(s_if) then ("--sif " +  '"' + s_if + '"') else ""} \
      ~{if defined(g_sea) then ("--gsea " +  '"' + g_sea + '"') else ""} \
      ~{if defined(graph_ml) then ("--graphml " +  '"' + graph_ml + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{if defined(bel) then ("--bel " +  '"' + bel + '"') else ""}
  >>>
  parameter_meta {
    csv: "Path to output a CSV file."
    s_if: "Path to output an SIF file."
    g_sea: "Path to output a GRP file for gene set enrichment analysis."
    graph_ml: "Path to output a GraphML file. Use .graphml for Cytoscape."
    json: "Path to output a node-link JSON file."
    bel: "Output canonical BEL."
    path: ""
  }
  output {
    File out_stdout = stdout()
    File out_csv = "${in_csv}"
    File out_s_if = "${in_s_if}"
    File out_g_sea = "${in_g_sea}"
    File out_graph_ml = "${in_graph_ml}"
    File out_json = "${in_json}"
  }
}