version 1.0

task Isoseq3Cluster {
  input {
    Boolean? poa_cov
    Boolean? use_qvs
    Boolean? min_sub_reads_split
    Boolean? split_bam
    Boolean? singletons
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    Boolean? verbose
    String iso_seq
    String unpolished_dot_bam_vertical_line_xml
    String str
    String cluster
    String var_input
    String fl_ncdot_bam_vertical_line_xml
    String fl_nc
    String unpolished
    String bam
    String or
    String consensus_read_set
    String transcript_set
  }
  command <<<
    isoseq3 cluster \
      ~{iso_seq} \
      ~{unpolished_dot_bam_vertical_line_xml} \
      ~{str} \
      ~{cluster} \
      ~{var_input} \
      ~{fl_ncdot_bam_vertical_line_xml} \
      ~{fl_nc} \
      ~{unpolished} \
      ~{bam} \
      ~{or} \
      ~{consensus_read_set} \
      ~{transcript_set} \
      ~{if (poa_cov) then "--poa-cov" else ""} \
      ~{if (use_qvs) then "--use-qvs" else ""} \
      ~{if (min_sub_reads_split) then "--min-subreads-split" else ""} \
      ~{if (split_bam) then "--split-bam" else ""} \
      ~{if (singletons) then "--singletons" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    poa_cov: "INT   Maximum number of CCS reads used for POA consensus. [10]"
    use_qvs: "Use CCS QVs, sets --poa-cov 100."
    min_sub_reads_split: "INT   Subread threshold for HQ/LQ split, only works with --use-qvs. [7]"
    split_bam: "INT   Split BAM output files into at maximum N files; 0 means no splitting [0]"
    singletons: "Output FLNCs that could not be clustered."
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    verbose: "Use verbose output."
    iso_seq: ""
    unpolished_dot_bam_vertical_line_xml: ""
    str: ""
    cluster: ""
    var_input: ""
    fl_ncdot_bam_vertical_line_xml: ""
    fl_nc: ""
    unpolished: ""
    bam: ""
    or: ""
    consensus_read_set: ""
    transcript_set: ""
  }
  output {
    File out_stdout = stdout()
  }
}