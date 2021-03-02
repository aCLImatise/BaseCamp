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
    String polished_dot_bam_vertical_line_xml
    String str
    String polish
    String var_input
    String var_output
    String unpolished_dot_bam_vertical_line_xml
    String polished
    String sub_read
    String sub_reads_dot_bam_vertical_line_xml
    String unpolished
    String bam
    String or
    String sub_read_set
    String transcript_set
  }
  command <<<
    isoseq3 polish \
      ~{iso_seq} \
      ~{polished_dot_bam_vertical_line_xml} \
      ~{str} \
      ~{polish} \
      ~{var_input} \
      ~{var_output} \
      ~{unpolished_dot_bam_vertical_line_xml} \
      ~{polished} \
      ~{sub_read} \
      ~{sub_reads_dot_bam_vertical_line_xml} \
      ~{unpolished} \
      ~{bam} \
      ~{or} \
      ~{sub_read_set} \
      ~{transcript_set} \
      ~{if (rq_cut_off) then "--rq-cutoff" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rq_cut_off: "FLOAT  RQ cutoff for fastx output. [0.99]"
    coverage: "INT    Maximum number of subreads used for polishing. [60]"
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    verbose: "Use verbose output."
    iso_seq: ""
    polished_dot_bam_vertical_line_xml: ""
    str: ""
    polish: ""
    var_input: ""
    var_output: ""
    unpolished_dot_bam_vertical_line_xml: ""
    polished: ""
    sub_read: ""
    sub_reads_dot_bam_vertical_line_xml: ""
    unpolished: ""
    bam: ""
    or: ""
    sub_read_set: ""
    transcript_set: ""
  }
  output {
    File out_stdout = stdout()
  }
}