version 1.0

task Fastqclipper {
  input {
    File? output_file_stats
    Int? maximum_difference_percentage
    Int? minimum_clip_length
    Int? minimum_remaining_sequence
    Boolean? extra_match_length
    Boolean? endofline_default
    Boolean? beginningofline_supported_yet
    File fast_q_file
    String adapters
  }
  command <<<
    fastq_clipper \
      ~{fast_q_file} \
      ~{adapters} \
      ~{if defined(output_file_stats) then ("-o " +  '"' + output_file_stats + '"') else ""} \
      ~{if defined(maximum_difference_percentage) then ("-p " +  '"' + maximum_difference_percentage + '"') else ""} \
      ~{if defined(minimum_clip_length) then ("-m " +  '"' + minimum_clip_length + '"') else ""} \
      ~{if defined(minimum_remaining_sequence) then ("-l " +  '"' + minimum_remaining_sequence + '"') else ""} \
      ~{if (extra_match_length) then "-x" else ""} \
      ~{if (endofline_default) then "-e" else ""} \
      ~{if (beginningofline_supported_yet) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_stats: "Output file (stats to stdout)"
    maximum_difference_percentage: "Maximum difference percentage (10)"
    minimum_clip_length: "Minimum clip length (1)"
    minimum_remaining_sequence: "Minimum remaining sequence length (15)"
    extra_match_length: "[N]  Extra match length past adapter length,\\nN =-1 : search all\\nN = 0 : search only up to adapter length"
    endofline_default: "End-of-line (default)"
    beginningofline_supported_yet: "Beginning-of-line (not supported yet)"
    fast_q_file: ""
    adapters: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stats = "${in_output_file_stats}"
  }
}