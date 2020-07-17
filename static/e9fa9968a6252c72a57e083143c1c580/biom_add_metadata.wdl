version 1.0

task BiomAddMetadata {
  input {
    File? input_fp
    File? output_fp
    File? sample_metadata_fp
    File? observation_metadata_fp
    String? sc_separated
    String? sc_pipe_separated
    String? int_fields
    String? float_fields
    String? sample_header
    String? observation_header
    Boolean? output_as_json
  }
  command <<<
    biom add-metadata \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(sample_metadata_fp) then ("--sample-metadata-fp " +  '"' + sample_metadata_fp + '"') else ""} \
      ~{if defined(observation_metadata_fp) then ("--observation-metadata-fp " +  '"' + observation_metadata_fp + '"') else ""} \
      ~{if defined(sc_separated) then ("--sc-separated " +  '"' + sc_separated + '"') else ""} \
      ~{if defined(sc_pipe_separated) then ("--sc-pipe-separated " +  '"' + sc_pipe_separated + '"') else ""} \
      ~{if defined(int_fields) then ("--int-fields " +  '"' + int_fields + '"') else ""} \
      ~{if defined(float_fields) then ("--float-fields " +  '"' + float_fields + '"') else ""} \
      ~{if defined(sample_header) then ("--sample-header " +  '"' + sample_header + '"') else ""} \
      ~{if defined(observation_header) then ("--observation-header " +  '"' + observation_header + '"') else ""} \
      ~{true="--output-as-json" false="" output_as_json}
  >>>
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    output_fp: "The output BIOM table  [required]"
    sample_metadata_fp: "The sample metadata mapping file (will add sample metadata to the input BIOM table, if provided)."
    observation_metadata_fp: "The observation metadata mapping file (will add observation metadata to the input BIOM table, if provided)."
    sc_separated: "Comma-separated list of the metadata fields to split on semicolons. This is useful for hierarchical data such as taxonomy or functional categories."
    sc_pipe_separated: "Comma-separated list of the metadata fields to split on semicolons and pipes (\"|\"). This is useful for hierarchical data such as functional categories with one-to-many mappings (e.g. x;y;z|x;y;w))."
    int_fields: "Comma-separated list of the metadata fields to cast to integers. This is useful for integer data such as \"DaysSinceStart\"."
    float_fields: "Comma-separated list of the metadata fields to cast to floating point numbers. This is useful for real number data such as \"pH\"."
    sample_header: "Comma-separated list of the sample metadata field names. This is useful if a header line is not provided with the metadata, if you want to rename the fields, or if you want to include only the first n fields where n is the number of entries provided here."
    observation_header: "Comma-separated list of the observation metadata field names. This is useful if a header line is not provided with the metadata, if you want to rename the fields, or if you want to include only the first n fields where n is the number of entries provided here."
    output_as_json: "Write the output file in JSON format."
  }
}