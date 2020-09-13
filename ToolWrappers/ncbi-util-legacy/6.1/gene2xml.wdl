version 1.0

task Gene2xml {
  input {
    Boolean? path_files_optional
    Boolean? path_results_optional
    Boolean? single_input_file
    File? single_output_file
    Boolean? file_binary_optionaldefault
    Boolean? file_compressed_optionaldefault
    Boolean? taxon_id_filter
    Boolean? extract_text_optionaldefault
    Boolean? combine_text_testing
    Boolean? combine_binary_then
    Boolean? log_processing_optionaldefault
  }
  command <<<
    gene2xml \
      ~{if (path_files_optional) then "-p" else ""} \
      ~{if (path_results_optional) then "-r" else ""} \
      ~{if (single_input_file) then "-i" else ""} \
      ~{if (single_output_file) then "-o" else ""} \
      ~{if (file_binary_optionaldefault) then "-b" else ""} \
      ~{if (file_compressed_optionaldefault) then "-c" else ""} \
      ~{if (taxon_id_filter) then "-t" else ""} \
      ~{if (extract_text_optionaldefault) then "-x" else ""} \
      ~{if (combine_text_testing) then "-y" else ""} \
      ~{if (combine_binary_then) then "-z" else ""} \
      ~{if (log_processing_optionaldefault) then "-l" else ""}
  >>>
  parameter_meta {
    path_files_optional: "Path to Files [String]  Optional"
    path_results_optional: "Path for Results [String]  Optional"
    single_input_file: "Single Input File [File In]  Optional\\ndefault = stdin"
    single_output_file: "Single Output File [File Out]  Optional\\ndefault = stdout"
    file_binary_optionaldefault: "File is Binary [T/F]  Optional\\ndefault = F"
    file_compressed_optionaldefault: "File is Compressed [T/F]  Optional\\ndefault = F"
    taxon_id_filter: "Taxon ID to Filter [Integer]  Optional\\ndefault = 0"
    extract_text_optionaldefault: "Extract .ags -> text .agc [T/F]  Optional\\ndefault = F"
    combine_text_testing: "Combine .agc -> text .ags (for testing) [T/F]  Optional\\ndefault = F"
    combine_binary_then: "Combine .agc -> binary .ags, then gzip [T/F]  Optional\\ndefault = F"
    log_processing_optionaldefault: "Log Processing [T/F]  Optional\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
    File out_single_output_file = "${in_single_output_file}"
  }
}