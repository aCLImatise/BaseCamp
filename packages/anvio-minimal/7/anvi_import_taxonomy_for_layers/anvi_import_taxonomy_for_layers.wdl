version 1.0

task Anviimporttaxonomyforlayers {
  input {
    String? profile_db
    Int? parser
    File? s_input_files
    Int? min_abundance
    String layer_taxonomy
  }
  command <<<
    anvi_import_taxonomy_for_layers \
      ~{layer_taxonomy} \
      ~{if defined(profile_db) then ("--profile-db " +  '"' + profile_db + '"') else ""} \
      ~{if defined(parser) then ("--parser " +  '"' + parser + '"') else ""} \
      ~{if defined(s_input_files) then ("-i " +  '"' + s_input_files + '"') else ""} \
      ~{if defined(min_abundance) then ("--min-abundance " +  '"' + min_abundance + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    profile_db: "Anvi'o profile database (default: None)"
    parser: "Parser to make sense of the input files. There are 1\\nparsers readily available: ['krakenuniq']. (default:\\nNone)"
    s_input_files: "(S) [FILE(S) ...], --input-files FILE(S) [FILE(S) ...]\\nInput file(s) for selected parser. Each parser (except\\n\\\"blank\\\") requires input files to process that you\\ngenerate before running anvio. Please see the\\ndocumentation for details. (default: None)"
    min_abundance: "Short read-based taxonomy can be extremely noisy.\\nTherefore, here we have defeault minimum percentage\\ncutoff of 0.1% to eliminate any taxon that occurs less\\nthan that in a given input file. (default: 0.1)"
    layer_taxonomy: "🍺 More on `anvi-import-taxonomy-for-layers`:"
  }
  output {
    File out_stdout = stdout()
  }
}