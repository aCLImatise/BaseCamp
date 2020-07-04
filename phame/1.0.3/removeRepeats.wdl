version 1.0

task RemoveRepeats.pl {
  input {
    String? reference_sequence_filename
    String? tabdelimited_coords_filename
    String? output_multifasta_filename
    String? output_repeats_default
  }
  command <<<
    removeRepeats.pl \
      ~{if defined(reference_sequence_filename) then ("-f " +  '"' + reference_sequence_filename + '"') else ""} \
      ~{if defined(tabdelimited_coords_filename) then ("-c " +  '"' + tabdelimited_coords_filename + '"') else ""} \
      ~{if defined(output_multifasta_filename) then ("-o " +  '"' + output_multifasta_filename + '"') else ""} \
      ~{if defined(output_repeats_default) then ("-s " +  '"' + output_repeats_default + '"') else ""}
  >>>
  parameter_meta {
    reference_sequence_filename: "reference sequence filename"
    tabdelimited_coords_filename: "tab-delimited coords filename"
    output_multifasta_filename: "output multifasta filename (default: non_repeats.fna)"
    output_repeats_default: "output repeats stats filename (default: non_repeat_stats.txt)"
  }
}