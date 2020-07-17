version 1.0

task Concat {
  input {
    String? concat_direction
    Array[String] input_file_paths
    File? file_wildcard
    String? out_type
    String? out_name
    Array[String] fields_to_remove
    Boolean? remove_all_metadata_fields
    Boolean? reset_ids
    String? data_null
    String? metadata_null
    String? filler_null
    Boolean? verbose
    String? error_report_output_file
  }
  command <<<
    concat \
      ~{if defined(concat_direction) then ("--concat_direction " +  '"' + concat_direction + '"') else ""} \
      ~{if defined(input_file_paths) then ("--input_filepaths " +  '"' + input_file_paths + '"') else ""} \
      ~{if defined(file_wildcard) then ("--file_wildcard " +  '"' + file_wildcard + '"') else ""} \
      ~{if defined(out_type) then ("--out_type " +  '"' + out_type + '"') else ""} \
      ~{if defined(out_name) then ("--out_name " +  '"' + out_name + '"') else ""} \
      ~{if defined(fields_to_remove) then ("--fields_to_remove " +  '"' + fields_to_remove + '"') else ""} \
      ~{true="--remove_all_metadata_fields" false="" remove_all_metadata_fields} \
      ~{true="--reset_ids" false="" reset_ids} \
      ~{if defined(data_null) then ("-data_null " +  '"' + data_null + '"') else ""} \
      ~{if defined(metadata_null) then ("-metadata_null " +  '"' + metadata_null + '"') else ""} \
      ~{if defined(filler_null) then ("-filler_null " +  '"' + filler_null + '"') else ""} \
      ~{true="-verbose" false="" verbose} \
      ~{if defined(error_report_output_file) then ("--error_report_output_file " +  '"' + error_report_output_file + '"') else ""}
  >>>
  parameter_meta {
    concat_direction: "which direction to concatenate (default: None)"
    input_file_paths: "full paths to gct(x) files to be concatenated (default: None)"
    file_wildcard: "wildcard specifying where files should be found (make sure to surround in quotes if calling from command line!) (default: None)"
    out_type: "whether to save output as a gct or gctx (default: gctx)"
    out_name: "what to name the output file (default: concated.gctx)"
    fields_to_remove: "fields to remove from the common metadata (default: [])"
    remove_all_metadata_fields: "remove all metadata fields during operation (default: False)"
    reset_ids: "whether to reset ids (use this flag if ids are not unique) (default: False)"
    data_null: "how to represent missing values in the data (default: NaN)"
    metadata_null: "how to represent missing values in the metadata (default: -666)"
    filler_null: "what value to use for filling the top-left filler block if output is a .gct (default: -666)"
    verbose: "whether to print a bunch of output (default: False)"
    error_report_output_file: "destination file for writing out error report - currently information about inconsistent metadata fields in the common dimension of the concat operation (default: None)"
  }
}