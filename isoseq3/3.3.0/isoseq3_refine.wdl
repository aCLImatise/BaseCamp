version 1.0

task Isoseq3Refine {
  input {
    Boolean? min_polya_length
    Boolean? require_polya
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    Boolean? verbose
    String fl_ncdot_bam_vertical_line_xml
    String iso_seq
    String str
    String refine
    String var_input
    String var_output
    String ccs_dot_demux_dot_bam_vertical_line_xml
    String demux_ed
    String fl_nc
    String primer
    String primer_dot_fast_a_vertical_line_xml
    String fast_a
    String ccs
    String bam
    String barcode_set
    String or
    String consensus_read_set
  }
  command <<<
    isoseq3 refine \
      ~{fl_ncdot_bam_vertical_line_xml} \
      ~{iso_seq} \
      ~{str} \
      ~{refine} \
      ~{var_input} \
      ~{var_output} \
      ~{ccs_dot_demux_dot_bam_vertical_line_xml} \
      ~{demux_ed} \
      ~{fl_nc} \
      ~{primer} \
      ~{primer_dot_fast_a_vertical_line_xml} \
      ~{fast_a} \
      ~{ccs} \
      ~{bam} \
      ~{barcode_set} \
      ~{or} \
      ~{consensus_read_set} \
      ~{if (min_polya_length) then "--min-polya-length" else ""} \
      ~{if (require_polya) then "--require-polya" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    min_polya_length: "INT   Minimum poly(A) tail length. [20]"
    require_polya: "Require FL reads to have a poly(A) tail and remove it."
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    verbose: "Use verbose output."
    fl_ncdot_bam_vertical_line_xml: ""
    iso_seq: ""
    str: ""
    refine: ""
    var_input: ""
    var_output: ""
    ccs_dot_demux_dot_bam_vertical_line_xml: ""
    demux_ed: ""
    fl_nc: ""
    primer: ""
    primer_dot_fast_a_vertical_line_xml: ""
    fast_a: ""
    ccs: ""
    bam: ""
    barcode_set: ""
    or: ""
    consensus_read_set: ""
  }
  output {
    File out_stdout = stdout()
  }
}