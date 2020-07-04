version 1.0

task GetRepeatCoords.pl {
  input {
    Int? identity_cutoff_default
    Int? repeat_length_cutoff
    String? output_filename_default
    String? output_stats_filename
  }
  command <<<
    get_repeat_coords.pl \
      ~{if defined(identity_cutoff_default) then ("-i " +  '"' + identity_cutoff_default + '"') else ""} \
      ~{if defined(repeat_length_cutoff) then ("-l " +  '"' + repeat_length_cutoff + '"') else ""} \
      ~{if defined(output_filename_default) then ("-o " +  '"' + output_filename_default + '"') else ""} \
      ~{if defined(output_stats_filename) then ("-s " +  '"' + output_stats_filename + '"') else ""}
  >>>
  parameter_meta {
    identity_cutoff_default: "the identity cutoff 0 to 100 (default: 95)"
    repeat_length_cutoff: "the repeat length cutoff (default:0)"
    output_filename_default: "output filename (default: repeats_coords.txt)"
    output_stats_filename: "output stats filename (default: repeats_stats.txt)"
  }
}