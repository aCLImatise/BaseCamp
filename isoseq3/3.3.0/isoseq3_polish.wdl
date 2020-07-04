version 1.0

task Isoseq3Polish {
  input {
    Boolean? rq_cut_off
    Boolean? coverage
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    Boolean? verbose
    String iso_seq
    String polish
    String unpolished_dot_bam_vertical_line_xml
    String sub_reads_dot_bam_vertical_line_xml
    String polished_dot_bam_vertical_line_xml
  }
  command <<<
    isoseq3 polish \
      ~{iso_seq} \
      ~{polish} \
      ~{unpolished_dot_bam_vertical_line_xml} \
      ~{sub_reads_dot_bam_vertical_line_xml} \
      ~{polished_dot_bam_vertical_line_xml} \
      ~{true="--rq-cutoff" false="" rq_cut_off} \
      ~{true="--coverage" false="" coverage} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    rq_cut_off: "FLOAT  RQ cutoff for fastx output. [0.99]"
    coverage: "INT    Maximum number of subreads used for polishing. [60]"
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    verbose: "Use verbose output."
    iso_seq: ""
    polish: ""
    unpolished_dot_bam_vertical_line_xml: ""
    sub_reads_dot_bam_vertical_line_xml: ""
    polished_dot_bam_vertical_line_xml: ""
  }
}