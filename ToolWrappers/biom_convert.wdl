version 1.0

task BiomConvert {
  input {
    File? input_fp
    File? output_fp
    File? sample_metadata_fp
    File? observation_metadata_fp
    Boolean? to_json
    Boolean? to_hdf_five
    Boolean? to_tsv
    Boolean? collapsed_samples
    Boolean? collapsed_observations
    File? header_key
    File? output_metadata_id
    Boolean? table_type
    Boolean? process_obs_metadata
    Boolean? tsv_metadata_formatter
    String format_dot_org_slash_documentation_slash_biom_conversion_dot_html
  }
  command <<<
    biom convert \
      ~{format_dot_org_slash_documentation_slash_biom_conversion_dot_html} \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(sample_metadata_fp) then ("--sample-metadata-fp " +  '"' + sample_metadata_fp + '"') else ""} \
      ~{if defined(observation_metadata_fp) then ("--observation-metadata-fp " +  '"' + observation_metadata_fp + '"') else ""} \
      ~{if (to_json) then "--to-json" else ""} \
      ~{if (to_hdf_five) then "--to-hdf5" else ""} \
      ~{if (to_tsv) then "--to-tsv" else ""} \
      ~{if (collapsed_samples) then "--collapsed-samples" else ""} \
      ~{if (collapsed_observations) then "--collapsed-observations" else ""} \
      ~{if defined(header_key) then ("--header-key " +  '"' + header_key + '"') else ""} \
      ~{if defined(output_metadata_id) then ("--output-metadata-id " +  '"' + output_metadata_id + '"') else ""} \
      ~{if (table_type) then "--table-type" else ""} \
      ~{if (process_obs_metadata) then "--process-obs-metadata" else ""} \
      ~{if (tsv_metadata_formatter) then "--tsv-metadata-formatter" else ""}
  >>>
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    output_fp: "The output BIOM table  [required]"
    sample_metadata_fp: "The sample metadata mapping file (will add\\nsample metadata to the input BIOM table, if\\nprovided)."
    observation_metadata_fp: "The observation metadata mapping file (will\\nadd observation metadata to the input BIOM\\ntable, if provided)."
    to_json: "Output as JSON-formatted table."
    to_hdf_five: "Output as HDF5-formatted table."
    to_tsv: "Output as TSV-formatted (classic) table."
    collapsed_samples: "If --to_hdf5 is passed and the original\\ntable is a BIOM table with collapsed\\nsamples, this will update the sample\\nmetadata of the table to the supported HDF5\\ncollapsed format."
    collapsed_observations: "If --to_hdf5 is passed and the original\\ntable is a BIOM table with collapsed\\nobservations, this will update the\\nobservation metadata of the table to the\\nsupported HDF5 collapsed format."
    header_key: "The observation metadata to include from the\\ninput BIOM table file when creating a tsv\\ntable file. By default no observation\\nmetadata will be included."
    output_metadata_id: "The name to be given to the observation\\nmetadata column when creating a tsv table\\nfile if the column should be renamed."
    table_type: "[OTU table|Pathway table|Function table|Ortholog table|Gene table|Metabolite table|Taxon table|Table]\\nThe type of the table."
    process_obs_metadata: "[taxonomy|naive|sc_separated]\\nProcess metadata associated with\\nobservations when converting from a classic\\ntable."
    tsv_metadata_formatter: "[naive|sc_separated]\\nMethod for formatting the observation\\nmetadata."
    format_dot_org_slash_documentation_slash_biom_conversion_dot_html: "Example usage:"
  }
  output {
    File out_stdout = stdout()
  }
}