version 1.0

task GcCoverageBias {
  input {
    String? reference_sequence_file
    String? designated_chromosome_i
    String? prefix_output_file
    String? the_window_length
    Boolean? gc_dump
    Boolean? dep_win_dump
  }
  command <<<
    gc_coverage_bias \
      ~{if defined(reference_sequence_file) then ("-r " +  '"' + reference_sequence_file + '"') else ""} \
      ~{if defined(designated_chromosome_i) then ("-c " +  '"' + designated_chromosome_i + '"') else ""} \
      ~{if defined(prefix_output_file) then ("-o " +  '"' + prefix_output_file + '"') else ""} \
      ~{if defined(the_window_length) then ("-w " +  '"' + the_window_length + '"') else ""} \
      ~{true="--gcdump" false="" gc_dump} \
      ~{true="--depwindump" false="" dep_win_dump}
  >>>
  parameter_meta {
    reference_sequence_file: "a reference sequence file about FA format "
    designated_chromosome_i: "the designated chromosome id list file, one id per line, without settings, processing all the reference sequence"
    prefix_output_file: "the prefix about output file"
    the_window_length: "the window length[such as:100,200,300] "
    gc_dump: "output the gc ratio in the window length "
    dep_win_dump: "output the avg depth in the window length "
  }
}