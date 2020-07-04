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
    String? header_key
    String? output_metadata_id
    Boolean? table_type
    Boolean? process_obs_metadata
    Boolean? tsv_metadata_formatter
  }
  command <<<
    biom convert \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(sample_metadata_fp) then ("--sample-metadata-fp " +  '"' + sample_metadata_fp + '"') else ""} \
      ~{if defined(observation_metadata_fp) then ("--observation-metadata-fp " +  '"' + observation_metadata_fp + '"') else ""} \
      ~{true="--to-json" false="" to_json} \
      ~{true="--to-hdf5" false="" to_hdf_five} \
      ~{true="--to-tsv" false="" to_tsv} \
      ~{true="--collapsed-samples" false="" collapsed_samples} \
      ~{true="--collapsed-observations" false="" collapsed_observations} \
      ~{if defined(header_key) then ("--header-key " +  '"' + header_key + '"') else ""} \
      ~{if defined(output_metadata_id) then ("--output-metadata-id " +  '"' + output_metadata_id + '"') else ""} \
      ~{true="--table-type" false="" table_type} \
      ~{true="--process-obs-metadata" false="" process_obs_metadata} \
      ~{true="--tsv-metadata-formatter" false="" tsv_metadata_formatter}
  >>>
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    output_fp: "The output BIOM table  [required]"
    sample_metadata_fp: "The sample metadata mapping file (will add sample metadata to the input BIOM table, if provided)."
    observation_metadata_fp: "The observation metadata mapping file (will add observation metadata to the input BIOM table, if provided)."
    to_json: "Output as JSON-formatted table."
    to_hdf_five: "Output as HDF5-formatted table."
    to_tsv: "Output as TSV-formatted (classic) table."
    collapsed_samples: "If --to_hdf5 is passed and the original table is a BIOM table with collapsed samples, this will update the sample metadata of the table to the supported HDF5 collapsed format."
    collapsed_observations: "If --to_hdf5 is passed and the original table is a BIOM table with collapsed observations, this will update the observation metadata of the table to the supported HDF5 collapsed format."
    header_key: "The observation metadata to include from the input BIOM table file when creating a tsv table file. By default no observation metadata will be included."
    output_metadata_id: "The name to be given to the observation metadata column when creating a tsv table file if the column should be renamed."
    table_type: "[OTU table|Pathway table|Function table|Ortholog table|Gene table|Metabolite table|Taxon table|Table] The type of the table."
    process_obs_metadata: "[taxonomy|naive|sc_separated] Process metadata associated with observations when converting from a classic table."
    tsv_metadata_formatter: "[naive|sc_separated] Method for formatting the observation metadata."
  }
}