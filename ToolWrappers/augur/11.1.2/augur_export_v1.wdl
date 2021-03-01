version 1.0

task AugurExportV1 {
  input {
    String? tree
    File? metadata
    Array[String] node_data
    File? output_tree
    File? output_meta
    File? auspice_config
    File? colors
    File? lat_longs
    String? tree_name
    Boolean? mini_fy_json
    File? output_sequence
    String? reference
    String? reference_translations
  }
  command <<<
    augur export v1 \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(node_data) then ("--node-data " +  '"' + node_data + '"') else ""} \
      ~{if defined(output_tree) then ("--output-tree " +  '"' + output_tree + '"') else ""} \
      ~{if defined(output_meta) then ("--output-meta " +  '"' + output_meta + '"') else ""} \
      ~{if defined(auspice_config) then ("--auspice-config " +  '"' + auspice_config + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(lat_longs) then ("--lat-longs " +  '"' + lat_longs + '"') else ""} \
      ~{if defined(tree_name) then ("--tree-name " +  '"' + tree_name + '"') else ""} \
      ~{if (mini_fy_json) then "--minify-json" else ""} \
      ~{if defined(output_sequence) then ("--output-sequence " +  '"' + output_sequence + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(reference_translations) then ("--reference-translations " +  '"' + reference_translations + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.1.2--py_1"
  }
  parameter_meta {
    tree: "tree to perform trait reconstruction on"
    metadata: "sequence metadata, as CSV or TSV"
    node_data: "JSON files with meta data for each node"
    output_tree: "JSON file name that is passed on to auspice (e.g.,\\nzika_tree.json)."
    output_meta: "JSON file name that is passed on to auspice (e.g.,\\nzika_meta.json)."
    auspice_config: "file with auspice configuration"
    colors: "Custom color definitions, one per line in the format\\n`TRAIT_TYPE\\tTRAIT_VALUE\\tHEX_CODE`"
    lat_longs: "file latitudes and longitudes, overrides built in\\nmappings"
    tree_name: "Tree name (needed for tangle tree functionality)"
    mini_fy_json: "export JSONs without indentation or line returns"
    output_sequence: "JSON file name that is passed on to auspice (e.g.,\\nzika_seq.json)."
    reference: "reference sequence for export to browser, only vcf"
    reference_translations: "reference translations for export to browser, only vcf\\n"
  }
  output {
    File out_stdout = stdout()
  }
}