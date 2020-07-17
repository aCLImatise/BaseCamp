version 1.0

task FastqClipper {
  input {
    String? output_file_stats
    String? maximum_difference_percentage
    String? minimum_clip_length
    String? minimum_remaining_sequence
    Boolean? extra_match_length
    Boolean? endofline_default
    Boolean? beginningofline_supported_yet
    String fast_q_file
    String adapters
  }
  command <<<
    fastq-clipper \
      ~{fast_q_file} \
      ~{adapters} \
      ~{if defined(output_file_stats) then ("-o " +  '"' + output_file_stats + '"') else ""} \
      ~{if defined(maximum_difference_percentage) then ("-p " +  '"' + maximum_difference_percentage + '"') else ""} \
      ~{if defined(minimum_clip_length) then ("-m " +  '"' + minimum_clip_length + '"') else ""} \
      ~{if defined(minimum_remaining_sequence) then ("-l " +  '"' + minimum_remaining_sequence + '"') else ""} \
      ~{true="-x" false="" extra_match_length} \
      ~{true="-e" false="" endofline_default} \
      ~{true="-b" false="" beginningofline_supported_yet}
  >>>
  parameter_meta {
    output_file_stats: "Output file (stats to stdout)"
    maximum_difference_percentage: "Maximum difference percentage (10)"
    minimum_clip_length: "Minimum clip length (1)"
    minimum_remaining_sequence: "Minimum remaining sequence length (15)"
    extra_match_length: "[N]  Extra match length past adapter length,  N =-1 : search all N = 0 : search only up to adapter length"
    endofline_default: "End-of-line (default)"
    beginningofline_supported_yet: "Beginning-of-line (not supported yet)"
    fast_q_file: ""
    adapters: ""
  }
}