version 1.0

task MergeRanges {
  input {
    File? path_sequence_store
    File? bgn_end_path
    File? path_output_clear
    Boolean? report_clear_changes
    String end_id
    String clear_range_file
  }
  command <<<
    mergeRanges \
      ~{end_id} \
      ~{clear_range_file} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(bgn_end_path) then ("-c " +  '"' + bgn_end_path + '"') else ""} \
      ~{if defined(path_output_clear) then ("-o " +  '"' + path_output_clear + '"') else ""} \
      ~{if (report_clear_changes) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_sequence_store: "Path to the sequence store"
    bgn_end_path: "<bgn> <end>  Path to the file of clear ranges,\\nalong with the (inclusive) range of\\nread IDs that have clear ranges set"
    path_output_clear: "Path to output clear ranges."
    report_clear_changes: "Report clear range changes to stderr"
    end_id: ""
    clear_range_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_path_output_clear = "${in_path_output_clear}"
  }
}