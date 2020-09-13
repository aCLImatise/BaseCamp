version 1.0

task Tarchive2ca {
  input {
    String? prefix_output_files
    File? file_containing_ranges
    File? file_libid_mean
  }
  command <<<
    tarchive2ca \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(file_containing_ranges) then ("-c " +  '"' + file_containing_ranges + '"') else ""} \
      ~{if defined(file_libid_mean) then ("-l " +  '"' + file_libid_mean + '"') else ""}
  >>>
  parameter_meta {
    prefix_output_files: "prefix for the output files"
    file_containing_ranges: "file containing clear ranges for the reads.  If this file\\nis provided, any sequence that does not appear in it is excluded\\nfrom the output."
    file_libid_mean: "tab-delimited file of lib_id, mean, stdev"
  }
  output {
    File out_stdout = stdout()
    File out_file_containing_ranges = "${in_file_containing_ranges}"
  }
}