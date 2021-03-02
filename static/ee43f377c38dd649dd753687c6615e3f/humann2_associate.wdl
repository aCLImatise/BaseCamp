version 1.0

task Humann2Associate {
  input {
    File? humann_table_metadata
    String? focal_meta_datum
    String? last_meta_datum
    String? focal_type
    File? where_save_output
    Float? fdr
  }
  command <<<
    humann2_associate \
      ~{if defined(humann_table_metadata) then ("--input " +  '"' + humann_table_metadata + '"') else ""} \
      ~{if defined(focal_meta_datum) then ("--focal-metadatum " +  '"' + focal_meta_datum + '"') else ""} \
      ~{if defined(last_meta_datum) then ("--last-metadatum " +  '"' + last_meta_datum + '"') else ""} \
      ~{if defined(focal_type) then ("--focal-type " +  '"' + focal_type + '"') else ""} \
      ~{if defined(where_save_output) then ("--output " +  '"' + where_save_output + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    humann_table_metadata: "HUMAnN2 table with metadata rows at the top"
    focal_meta_datum: "Indicate metadatum to test vs. community feature totals"
    last_meta_datum: "Indicate end of metadata rows"
    focal_type: "Metadatum type"
    where_save_output: "Where to save the output"
    fdr: "FDR threshold (default=0.2)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}