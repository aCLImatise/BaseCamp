version 1.0

task PypgatkCliCosmictoproteindb {
  input {
    File? config_file
    String? input_genes
    String? output_db
    File? filter_column
    String? accepted_values
    Boolean? split_by_filter_column
    String pipelines
  }
  command <<<
    pypgatk_cli cosmic_to_proteindb \
      ~{pipelines} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(input_genes) then ("--input_genes " +  '"' + input_genes + '"') else ""} \
      ~{if defined(output_db) then ("--output_db " +  '"' + output_db + '"') else ""} \
      ~{if defined(filter_column) then ("--filter_column " +  '"' + filter_column + '"') else ""} \
      ~{if defined(accepted_values) then ("--accepted_values " +  '"' + accepted_values + '"') else ""} \
      ~{if (split_by_filter_column) then "--split_by_filter_column" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.19--py_0"
  }
  parameter_meta {
    config_file: "Configuration file for the cosmic data"
    input_genes: "All Cosmic genes"
    output_db: "Protein database including all the mutations"
    filter_column: "Column in the VCF file to be used for\\nfiltering or splitting mutations"
    accepted_values: "Limit mutations to values (tissue type, sample\\nname, etc) considered for generating\\nproteinDBs, by default mutations from all\\nrecords are considered"
    split_by_filter_column: "Use this flag to generate a proteinDB per\\ngroup as specified in the filter_column,\\ndefault is False"
    pipelines: "-in, --input_mutation TEXT    Cosmic Mutation data file"
  }
  output {
    File out_stdout = stdout()
  }
}