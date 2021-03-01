version 1.0

task Ccs {
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
    String in_dot_sub_reads_dot_bam_vertical_line_xml
    File var_file
    String sub_reads
  }
  command <<<
    ccs \
      ~{in_dot_sub_reads_dot_bam_vertical_line_xml} \
      ~{var_file} \
      ~{sub_reads} \
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
    min_passes: "INT    Minimum number of full-length subreads\\nrequired to generate CCS for a ZMW. [3]"
    min_snr: "FLOAT  Minimum SNR of subreads to use for\\ngenerating CCS [2.5]"
    min_length: "INT    Minimum draft length before polishing.\\n[10]"
    max_length: "INT    Maximum draft length before polishing.\\n[50000]"
    chunk: "STR    Operate on a single chunk. Format i/N,\\nwhere i in [1,N]. Examples: 3/24 or 9/9"
    max_chunks: "Determine maximum number of chunks."
    model_path: "STR    Path to a chemistry model file or\\ndirectory containing model files."
    model_spec: "STR    Name of chemistry or model to use,\\noverriding default selection."
    by_strand: "Generate a consensus for each strand."
    skip_polish: "Only output the initial draft template\\n(faster, less accurate)."
    min_rq: "FLOAT  Minimum predicted accuracy in [0, 1].\\n[0.99]"
    report_file: "FILE   Where to write the results report.\\n[ccs_report.txt]"
    num_threads: "INT    Number of threads to use, 0 means\\nautodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE,\\nDEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    in_dot_sub_reads_dot_bam_vertical_line_xml: ""
    var_file: ""
    sub_reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}