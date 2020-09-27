version 1.0

task Insertsizes {
  input {
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    Int? number_characters_use
    Boolean? show_details_insert
    Boolean? print_library_summaries
    Boolean? use_scaffold_information
    Boolean? print_coverage_information
    Boolean? also_process_contigs
    File bank_path
  }
  command <<<
    insert_sizes \
      ~{bank_path} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if defined(number_characters_use) then ("-f " +  '"' + number_characters_use + '"') else ""} \
      ~{if (show_details_insert) then "-d" else ""} \
      ~{if (print_library_summaries) then "-S" else ""} \
      ~{if (use_scaffold_information) then "-c" else ""} \
      ~{if (print_coverage_information) then "-C" else ""} \
      ~{if (also_process_contigs) then "-U" else ""}
  >>>
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    number_characters_use: "Number of characters of seqname to use as sublibrary (default=0)"
    show_details_insert: "Show details for each insert"
    print_library_summaries: "Don't print library summaries"
    use_scaffold_information: "Don't use scaffold information"
    print_coverage_information: "Print coverage information"
    also_process_contigs: "Also process contigs not placed into a scaffold"
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}