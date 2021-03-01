version 1.0

task PypgatkClipyCosmictoproteindb {
  input {
    File? config_file
    File? input_mutation
    String? input_genes
    String? output_db
    String? tissue_type
    Boolean? split_by_tissue_type
  }
  command <<<
    pypgatk_cli_py cosmic_to_proteindb \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(input_mutation) then ("--input_mutation " +  '"' + input_mutation + '"') else ""} \
      ~{if defined(input_genes) then ("--input_genes " +  '"' + input_genes + '"') else ""} \
      ~{if defined(output_db) then ("--output_db " +  '"' + output_db + '"') else ""} \
      ~{if defined(tissue_type) then ("--tissue_type " +  '"' + tissue_type + '"') else ""} \
      ~{if (split_by_tissue_type) then "--split_by_tissue_type" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_file: "Configuration file for the cosmic data pipelines"
    input_mutation: "Cosmic Mutation data file"
    input_genes: "All Cosmic genes"
    output_db: "Protein database including all the mutations"
    tissue_type: "Limit mutations to tissue types considered for\\ngenerating proteinDBs, by default mutations from\\nall tissue types are considered"
    split_by_tissue_type: "Use this flag to generate a proteinDB per tissue\\ntype as specified in the Primary site column,\\ndefault is False"
  }
  output {
    File out_stdout = stdout()
  }
}