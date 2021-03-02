version 1.0

task Ccsalt {
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
    String out_dot_ccs_dot_bam_vertical_line_fast_q_do_tgz_vertical_line_xml
    String ccs
    File var_file
    String in_dot_sub_reads_dot_bam_vertical_line_xml
    String consensus
    String sub_reads
    String reads
  }
  command <<<
    ccs_alt \
      ~{out_dot_ccs_dot_bam_vertical_line_fast_q_do_tgz_vertical_line_xml} \
      ~{ccs} \
      ~{var_file} \
      ~{in_dot_sub_reads_dot_bam_vertical_line_xml} \
      ~{consensus} \
      ~{sub_reads} \
      ~{reads} \
      ~{if (min_passes) then "--min-passes" else ""} \
      ~{if (min_snr) then "--min-snr" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (max_length) then "--max-length" else ""} \
      ~{if (chunk) then "--chunk" else ""} \
      ~{if (max_chunks) then "--max-chunks" else ""} \
      ~{if (model_path) then "--model-path" else ""} \
      ~{if (model_spec) then "--model-spec" else ""} \
      ~{if (by_strand) then "--by-strand" else ""} \
      ~{if (skip_polish) then "--skip-polish" else ""} \
      ~{if (min_rq) then "--min-rq" else ""} \
      ~{if (report_file) then "--report-file" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    out_dot_ccs_dot_bam_vertical_line_fast_q_do_tgz_vertical_line_xml: ""
    ccs: ""
    var_file: ""
    in_dot_sub_reads_dot_bam_vertical_line_xml: ""
    consensus: ""
    sub_reads: ""
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}