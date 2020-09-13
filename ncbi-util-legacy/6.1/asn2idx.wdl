version 1.0

task Asn2idx {
  input {
    Boolean? path_to_files
    Boolean? path_results_optional
    Boolean? required_subdirectory_optional
    Boolean? file_selection_substring
    Boolean? filter_default_gbcongbestgbgssgbhtggbsts
    Boolean? bioseqsets_binary_optionaldefault
    Boolean? recurse_optionaldefault_f
  }
  command <<<
    asn2idx \
      ~{if (path_to_files) then "-p" else ""} \
      ~{if (path_results_optional) then "-r" else ""} \
      ~{if (required_subdirectory_optional) then "-d" else ""} \
      ~{if (file_selection_substring) then "-x" else ""} \
      ~{if (filter_default_gbcongbestgbgssgbhtggbsts) then "-f" else ""} \
      ~{if (bioseqsets_binary_optionaldefault) then "-b" else ""} \
      ~{if (recurse_optionaldefault_f) then "-t" else ""}
  >>>
  parameter_meta {
    path_to_files: "Path to Files [String]"
    path_results_optional: "Path for Results [String]  Optional"
    required_subdirectory_optional: "Required Subdirectory [String]  Optional"
    file_selection_substring: "File Selection Substring [String]  Optional\\ndefault = .aso"
    filter_default_gbcongbestgbgssgbhtggbsts: "Filter [String]\\ndefault = gbcon,gbest,gbgss,gbhtg,gbsts"
    bioseqsets_binary_optionaldefault: "Bioseq-sets are Binary [T/F]  Optional\\ndefault = F"
    recurse_optionaldefault_f: "Recurse [T/F]  Optional\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
  }
}