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
    String cluster
    String fl_ncdot_bam_vertical_line_xml
    String unpolished_dot_bam_vertical_line_xml
  }
  command <<<
    isoseq3 cluster \
      ~{iso_seq} \
      ~{cluster} \
      ~{fl_ncdot_bam_vertical_line_xml} \
      ~{unpolished_dot_bam_vertical_line_xml} \
      ~{true="--poa-cov" false="" poa_cov} \
      ~{true="--use-qvs" false="" use_qvs} \
      ~{true="--min-subreads-split" false="" min_sub_reads_split} \
      ~{true="--split-bam" false="" split_bam} \
      ~{true="--singletons" false="" singletons} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file} \
      ~{true="--verbose" false="" verbose}
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
    cluster: ""
    fl_ncdot_bam_vertical_line_xml: ""
    unpolished_dot_bam_vertical_line_xml: ""
  }
}