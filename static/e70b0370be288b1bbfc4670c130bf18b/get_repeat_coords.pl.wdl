version 1.0

task GetRepeatCoordspl {
  input {
    Int? identity_cutoff_default
    Int? repeat_length_default
    File? output_filename_default
    File? output_stats_filename
  }
  command <<<
    get_repeat_coords_pl \
      ~{if defined(identity_cutoff_default) then ("-i " +  '"' + identity_cutoff_default + '"') else ""} \
      ~{if defined(repeat_length_default) then ("-l " +  '"' + repeat_length_default + '"') else ""} \
      ~{if defined(output_filename_default) then ("-o " +  '"' + output_filename_default + '"') else ""} \
      ~{if defined(output_stats_filename) then ("-s " +  '"' + output_stats_filename + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    identity_cutoff_default: "the identity cutoff 0 to 100 (default: 95)"
    repeat_length_default: "the repeat length cutoff (default:0)"
    output_filename_default: "output filename (default: repeats_coords.txt)"
    output_stats_filename: "output stats filename (default: repeats_stats.txt)"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_default = "${in_output_filename_default}"
    File out_output_stats_filename = "${in_output_stats_filename}"
  }
}