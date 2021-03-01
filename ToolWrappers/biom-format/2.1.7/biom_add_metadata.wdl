version 1.0

task BiomAddmetadata {
  input {
    File? input_fp
    File? output_fp
    File? sample_metadata_fp
    File? observation_metadata_fp
    String? sc_separated
    String? sc_pipe_separated
    Int? int_fields
    Float? float_fields
    Int? sample_header
    Int? observation_header
    File? output_as_json
  }
  command <<<
    biom add_metadata \
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
      ~{if (output_as_json) then "--output-as-json" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    output_fp: "The output BIOM table  [required]"
    sample_metadata_fp: "The sample metadata mapping file (will add\\nsample metadata to the input BIOM table, if\\nprovided)."
    observation_metadata_fp: "The observation metadata mapping file (will\\nadd observation metadata to the input BIOM\\ntable, if provided)."
    sc_separated: "Comma-separated list of the metadata fields\\nto split on semicolons. This is useful for\\nhierarchical data such as taxonomy or\\nfunctional categories."
    sc_pipe_separated: "Comma-separated list of the metadata fields\\nto split on semicolons and pipes (\\\"|\\\"). This\\nis useful for hierarchical data such as\\nfunctional categories with one-to-many\\nmappings (e.g. x;y;z|x;y;w))."
    int_fields: "Comma-separated list of the metadata fields\\nto cast to integers. This is useful for\\ninteger data such as \\\"DaysSinceStart\\\"."
    float_fields: "Comma-separated list of the metadata fields\\nto cast to floating point numbers. This is\\nuseful for real number data such as \\\"pH\\\"."
    sample_header: "Comma-separated list of the sample metadata\\nfield names. This is useful if a header line\\nis not provided with the metadata, if you\\nwant to rename the fields, or if you want to\\ninclude only the first n fields where n is\\nthe number of entries provided here."
    observation_header: "Comma-separated list of the observation\\nmetadata field names. This is useful if a\\nheader line is not provided with the\\nmetadata, if you want to rename the fields,\\nor if you want to include only the first n\\nfields where n is the number of entries\\nprovided here."
    output_as_json: "Write the output file in JSON format."
  }
  output {
    File out_stdout = stdout()
    File out_output_as_json = "${in_output_as_json}"
  }
}