version 1.0

task AugurExportV2 {
  input {
    String? tree
    Array[String] node_data
    File? ouput_file_typically
    File? auspice_config
    String? title
    Array[String] maintainers
    String? build_url
    File? description
    Array[String] geo_resolutions
    Array[String] color_by_metadata
    Array[String] panels
    File? metadata
    String? lat_longs
    Boolean? mini_fy_json
    File? include_root_sequence
    String tsv
  }
  command <<<
    augur export v2 \
      ~{tsv} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(node_data) then ("--node-data " +  '"' + node_data + '"') else ""} \
      ~{if defined(ouput_file_typically) then ("--output " +  '"' + ouput_file_typically + '"') else ""} \
      ~{if defined(auspice_config) then ("--auspice-config " +  '"' + auspice_config + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(maintainers) then ("--maintainers " +  '"' + maintainers + '"') else ""} \
      ~{if defined(build_url) then ("--build-url " +  '"' + build_url + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(geo_resolutions) then ("--geo-resolutions " +  '"' + geo_resolutions + '"') else ""} \
      ~{if defined(color_by_metadata) then ("--color-by-metadata " +  '"' + color_by_metadata + '"') else ""} \
      ~{if defined(panels) then ("--panels " +  '"' + panels + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(lat_longs) then ("--lat-longs " +  '"' + lat_longs + '"') else ""} \
      ~{if (mini_fy_json) then "--minify-json" else ""} \
      ~{if (include_root_sequence) then "--include-root-sequence" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.3.0--py_0"
  }
  parameter_meta {
    tree: "Phylogenetic tree, usually output from `augur refine`"
    node_data: "JSON files containing metadata for nodes in the tree"
    ouput_file_typically: "Ouput file (typically for visualisation in auspice)"
    auspice_config: "Auspice configuration file"
    title: "Title to be displayed by auspice"
    maintainers: "Analysis maintained by, in format 'Name <URL>' 'Name2\\n<URL>', ..."
    build_url: "Build URL/repository to be displayed by Auspice"
    description: "Markdown file with description of build and/or\\nacknowledgements to be displayed by Auspice"
    geo_resolutions: "Geographic traits to be displayed on map"
    color_by_metadata: "Metadata columns to include as coloring options"
    panels: "Restrict panel display in auspice. Options are tree,\\nmap, entropy, frequencies. Ignore this option to\\ndisplay all available panels."
    metadata: "Additional metadata for strains in the tree, as CSV or"
    lat_longs: "Latitudes and longitudes for geography traits\\n(overrides built in mappings)"
    mini_fy_json: "export JSONs without indentation or line returns"
    include_root_sequence: "Export an additional JSON containing the root sequence\\n(reference sequence for vcf) used to identify\\nmutations. The filename will follow the pattern of\\n<OUTPUT>_root-sequence.json for a main auspice JSON of\\n<OUTPUT>.json\\n"
    tsv: "--colors FILE         Custom color definitions, one per line in the format"
  }
  output {
    File out_stdout = stdout()
    File out_include_root_sequence = "${in_include_root_sequence}"
  }
}