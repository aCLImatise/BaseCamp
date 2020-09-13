version 1.0

task ParseMappingspl {
  input {
    Int? discard_mappings_higher
    Int? discard_mappings_shorter
    Int? discard_mappings_read
    File? discard_read_queries_not_file
    File? discard_read_queries_in_file
    File? discard_reference_dbs_not_file
    File? discard_reference_dbs_in_file
    Int? discard_remaining_mappings
    Boolean? remove_unmatched_nts
    Boolean? output_progress_standard
  }
  command <<<
    parse_mappings_pl \
      ~{if defined(discard_mappings_higher) then ("-a " +  '"' + discard_mappings_higher + '"') else ""} \
      ~{if defined(discard_mappings_shorter) then ("-b " +  '"' + discard_mappings_shorter + '"') else ""} \
      ~{if defined(discard_mappings_read) then ("-c " +  '"' + discard_mappings_read + '"') else ""} \
      ~{if defined(discard_read_queries_not_file) then ("-d " +  '"' + discard_read_queries_not_file + '"') else ""} \
      ~{if defined(discard_read_queries_in_file) then ("-e " +  '"' + discard_read_queries_in_file + '"') else ""} \
      ~{if defined(discard_reference_dbs_not_file) then ("-f " +  '"' + discard_reference_dbs_not_file + '"') else ""} \
      ~{if defined(discard_reference_dbs_in_file) then ("-g " +  '"' + discard_reference_dbs_in_file + '"') else ""} \
      ~{if defined(discard_remaining_mappings) then ("-i " +  '"' + discard_remaining_mappings + '"') else ""} \
      ~{if (remove_unmatched_nts) then "-j" else ""} \
      ~{if (output_progress_standard) then "-k" else ""}
  >>>
  parameter_meta {
    discard_mappings_higher: "Discard mappings of edit distance higher than this"
    discard_mappings_shorter: "Discard mappings of read queries shorter than this"
    discard_mappings_read: "Discard mappings of read queries longer than this"
    discard_read_queries_not_file: "Discard read queries not in this file"
    discard_read_queries_in_file: "Discard read queries in this file"
    discard_reference_dbs_not_file: "Discard reference dbs not in this file"
    discard_reference_dbs_in_file: "Discard reference dbs in this file"
    discard_remaining_mappings: "Discard remaining suboptimal mappings and discard any\\nreads that have more remaining mappings than this"
    remove_unmatched_nts: "Remove any unmatched nts in the very 3' end"
    output_progress_standard: "Output progress to standard output"
  }
  output {
    File out_stdout = stdout()
  }
}