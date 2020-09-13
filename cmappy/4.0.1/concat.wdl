version 1.0

task Concat {
  input {
    File? file_wildcard
    String? concat_direction
    Array[File] input_file_paths
    String? out_type
    File? out_name
    Array[String] fields_to_remove
    Boolean? remove_all_metadata_fields
    Boolean? reset_ids
    String? data_null
    Int? metadata_null
    Int? filler_null
    Boolean? verbose
    File? error_report_output_file
  }
  command <<<
    concat \
      ~{if defined(file_wildcard) then ("--file_wildcard " +  '"' + file_wildcard + '"') else ""} \
      ~{if defined(concat_direction) then ("--concat_direction " +  '"' + concat_direction + '"') else ""} \
      ~{if defined(input_file_paths) then ("--input_filepaths " +  '"' + input_file_paths + '"') else ""} \
      ~{if defined(out_type) then ("--out_type " +  '"' + out_type + '"') else ""} \
      ~{if defined(out_name) then ("--out_name " +  '"' + out_name + '"') else ""} \
      ~{if defined(fields_to_remove) then ("--fields_to_remove " +  '"' + fields_to_remove + '"') else ""} \
      ~{if (remove_all_metadata_fields) then "--remove_all_metadata_fields" else ""} \
      ~{if (reset_ids) then "--reset_ids" else ""} \
      ~{if defined(data_null) then ("-data_null " +  '"' + data_null + '"') else ""} \
      ~{if defined(metadata_null) then ("-metadata_null " +  '"' + metadata_null + '"') else ""} \
      ~{if defined(filler_null) then ("-filler_null " +  '"' + filler_null + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(error_report_output_file) then ("--error_report_output_file " +  '"' + error_report_output_file + '"') else ""}
  >>>
  parameter_meta {
    file_wildcard: "wildcard specifying where files should be found (make\\nsure to surround in quotes if calling from command\\nline!) (default: None)"
    concat_direction: "which direction to concatenate (default: None)"
    input_file_paths: "full paths to gct(x) files to be concatenated\\n(default: None)"
    out_type: "whether to save output as a gct or gctx (default:\\ngctx)"
    out_name: "what to name the output file (default: concated.gctx)"
    fields_to_remove: "fields to remove from the common metadata (default:\\n[])"
    remove_all_metadata_fields: "remove all metadata fields during operation (default:\\nFalse)"
    reset_ids: "whether to reset ids (use this flag if ids are not\\nunique) (default: False)"
    data_null: "how to represent missing values in the data (default:\\nNaN)"
    metadata_null: "how to represent missing values in the metadata\\n(default: -666)"
    filler_null: "what value to use for filling the top-left filler\\nblock if output is a .gct (default: -666)"
    verbose: "whether to print a bunch of output (default: False)"
    error_report_output_file: "destination file for writing out error report -\\ncurrently information about inconsistent metadata\\nfields in the common dimension of the concat operation\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_name = "${in_out_name}"
    File out_error_report_output_file = "${in_error_report_output_file}"
  }
}