version 1.0

task RemoveRepeatspl {
  input {
    File? reference_sequence_filename
    File? tabdelimited_coords_filename
    File? output_multifasta_filename
    File? output_repeats_stats
  }
  command <<<
    removeRepeats_pl \
      ~{if defined(reference_sequence_filename) then ("-f " +  '"' + reference_sequence_filename + '"') else ""} \
      ~{if defined(tabdelimited_coords_filename) then ("-c " +  '"' + tabdelimited_coords_filename + '"') else ""} \
      ~{if defined(output_multifasta_filename) then ("-o " +  '"' + output_multifasta_filename + '"') else ""} \
      ~{if defined(output_repeats_stats) then ("-s " +  '"' + output_repeats_stats + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_sequence_filename: "reference sequence filename"
    tabdelimited_coords_filename: "tab-delimited coords filename"
    output_multifasta_filename: "output multifasta filename (default: non_repeats.fna)"
    output_repeats_stats: "output repeats stats filename (default: non_repeat_stats.txt)"
  }
  output {
    File out_stdout = stdout()
    File out_output_multifasta_filename = "${in_output_multifasta_filename}"
    File out_output_repeats_stats = "${in_output_repeats_stats}"
  }
}