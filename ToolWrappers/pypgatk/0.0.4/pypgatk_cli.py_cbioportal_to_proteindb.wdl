version 1.0

task PypgatkClipyCbioportaltoproteindb {
  input {
    String? config_file
    String? input_cds
    String? output_db
    String? tissue_type
    Boolean? split_by_tissue_type
    File? clinical_sample_file
    String tool
  }
  command <<<
    pypgatk_cli_py cbioportal_to_proteindb \
      ~{tool} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(input_cds) then ("--input_cds " +  '"' + input_cds + '"') else ""} \
      ~{if defined(output_db) then ("--output_db " +  '"' + output_db + '"') else ""} \
      ~{if defined(tissue_type) then ("--tissue_type " +  '"' + tissue_type + '"') else ""} \
      ~{if (split_by_tissue_type) then "--split_by_tissue_type" else ""} \
      ~{if defined(clinical_sample_file) then ("--clinical_sample_file " +  '"' + clinical_sample_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_file: "Configuration for cbioportal to proteindb"
    input_cds: "CDS genes from ENSEMBL database"
    output_db: "Protein database including all the mutations"
    tissue_type: "Limit mutations to tissue types considered\\nfor generating proteinDBs, by default\\nmutations from all tissue types are\\nconsidered"
    split_by_tissue_type: "Use this flag to generate a proteinDB per\\ntissue type as specified in the Primary site\\ncolumn, default is False"
    clinical_sample_file: "File to get tissue type from for the samples\\nin input_mutation file"
    tool: "-in, --input_mutation TEXT      Cbioportal mutation file"
  }
  output {
    File out_stdout = stdout()
  }
}