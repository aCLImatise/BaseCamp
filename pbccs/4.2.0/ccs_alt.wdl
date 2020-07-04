version 1.0

task CcsAlt {
  input {
    Boolean? min_passes
    Boolean? min_snr
    Boolean? min_length
    Boolean? max_length
    Boolean? chunk
    Boolean? max_chunks
    Boolean? model_path
    Boolean? model_spec
    Boolean? by_strand
    Boolean? skip_polish
    Boolean? min_rq
    Boolean? report_file
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String ccs
    String in_dot_sub_reads_dot_bam_vertical_line_xml
    String out_dot_ccs_dot_bam_vertical_line_fast_q_do_tgz_vertical_line_xml
  }
  command <<<
    ccs-alt \
      ~{ccs} \
      ~{in_dot_sub_reads_dot_bam_vertical_line_xml} \
      ~{out_dot_ccs_dot_bam_vertical_line_fast_q_do_tgz_vertical_line_xml} \
      ~{true="--min-passes" false="" min_passes} \
      ~{true="--min-snr" false="" min_snr} \
      ~{true="--min-length" false="" min_length} \
      ~{true="--max-length" false="" max_length} \
      ~{true="--chunk" false="" chunk} \
      ~{true="--max-chunks" false="" max_chunks} \
      ~{true="--model-path" false="" model_path} \
      ~{true="--model-spec" false="" model_spec} \
      ~{true="--by-strand" false="" by_strand} \
      ~{true="--skip-polish" false="" skip_polish} \
      ~{true="--min-rq" false="" min_rq} \
      ~{true="--report-file" false="" report_file} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    min_passes: "INT    Minimum number of full-length subreads required to generate CCS for a ZMW. [3]"
    min_snr: "FLOAT  Minimum SNR of subreads to use for generating CCS [2.5]"
    min_length: "INT    Minimum draft length before polishing. [10]"
    max_length: "INT    Maximum draft length before polishing. [50000]"
    chunk: "STR    Operate on a single chunk. Format i/N, where i in [1,N]. Examples: 3/24 or 9/9"
    max_chunks: "Determine maximum number of chunks."
    model_path: "STR    Path to a chemistry model file or directory containing model files."
    model_spec: "STR    Name of chemistry or model to use, overriding default selection."
    by_strand: "Generate a consensus for each strand."
    skip_polish: "Only output the initial draft template (faster, less accurate)."
    min_rq: "FLOAT  Minimum predicted accuracy in [0, 1]. [0.99]"
    report_file: "FILE   Where to write the results report. [ccs_report.txt]"
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    ccs: ""
    in_dot_sub_reads_dot_bam_vertical_line_xml: ""
    out_dot_ccs_dot_bam_vertical_line_fast_q_do_tgz_vertical_line_xml: ""
  }
}