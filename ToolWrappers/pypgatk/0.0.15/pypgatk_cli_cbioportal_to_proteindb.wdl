version 1.0

task PypgatkCliCbioportaltoproteindb {
  input {
    String? config_file
    String? input_cds
    String? output_db
    File? filter_column
    String? accepted_values
    Boolean? split_by_filter_column
    File? clinical_sample_file
    String tool
  }
  command <<<
    pypgatk_cli cbioportal_to_proteindb \
      ~{tool} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(input_cds) then ("--input_cds " +  '"' + input_cds + '"') else ""} \
      ~{if defined(output_db) then ("--output_db " +  '"' + output_db + '"') else ""} \
      ~{if defined(filter_column) then ("--filter_column " +  '"' + filter_column + '"') else ""} \
      ~{if defined(accepted_values) then ("--accepted_values " +  '"' + accepted_values + '"') else ""} \
      ~{if (split_by_filter_column) then "--split_by_filter_column" else ""} \
      ~{if defined(clinical_sample_file) then ("--clinical_sample_file " +  '"' + clinical_sample_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.15--py_0"
  }
  parameter_meta {
    config_file: "Configuration for cbioportal to proteindb"
    input_cds: "CDS genes from ENSEMBL database"
    output_db: "Protein database including all the mutations"
    filter_column: "Column in the VCF file to be used for\\nfiltering or splitting mutations"
    accepted_values: "Limit mutations to values (tissue type,\\nsample name, etc) considered for generating\\nproteinDBs, by default mutations from all\\nrecords are considered"
    split_by_filter_column: "Use this flag to generate a proteinDB per\\ngroup as specified in the filter_column,\\ndefault is False"
    clinical_sample_file: "File to get tissue type from for the samples\\nin input_mutation file"
    tool: "-in, --input_mutation TEXT      Cbioportal mutation file"
  }
  output {
    File out_stdout = stdout()
  }
}