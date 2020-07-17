version 1.0

task Isoseq3Refine {
  input {
    Boolean? min_polya_length
    Boolean? require_polya
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    Boolean? verbose
    String iso_seq
    String refine
    String ccs_dot_demux_dot_bam_vertical_line_xml
    String primer_dot_fast_a_vertical_line_xml
    String fl_ncdot_bam_vertical_line_xml
  }
  command <<<
    isoseq3 refine \
      ~{iso_seq} \
      ~{refine} \
      ~{ccs_dot_demux_dot_bam_vertical_line_xml} \
      ~{primer_dot_fast_a_vertical_line_xml} \
      ~{fl_ncdot_bam_vertical_line_xml} \
      ~{true="--min-polya-length" false="" min_polya_length} \
      ~{true="--require-polya" false="" require_polya} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    min_polya_length: "INT   Minimum poly(A) tail length. [20]"
    require_polya: "Require FL reads to have a poly(A) tail and remove it."
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    verbose: "Use verbose output."
    iso_seq: ""
    refine: ""
    ccs_dot_demux_dot_bam_vertical_line_xml: ""
    primer_dot_fast_a_vertical_line_xml: ""
    fl_ncdot_bam_vertical_line_xml: ""
  }
}