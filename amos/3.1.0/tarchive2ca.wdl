version 1.0

task Tarchive2ca {
  input {
    String? prefix_output_files
    String? file_containing_ranges
    String? tabdelimited_file_libid
  }
  command <<<
    tarchive2ca \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(file_containing_ranges) then ("-c " +  '"' + file_containing_ranges + '"') else ""} \
      ~{if defined(tabdelimited_file_libid) then ("-l " +  '"' + tabdelimited_file_libid + '"') else ""}
  >>>
  parameter_meta {
    prefix_output_files: "prefix for the output files"
    file_containing_ranges: "file containing clear ranges for the reads.  If this file is provided, any sequence that does not appear in it is excluded from the output."
    tabdelimited_file_libid: "tab-delimited file of lib_id, mean, stdev"
  }
}