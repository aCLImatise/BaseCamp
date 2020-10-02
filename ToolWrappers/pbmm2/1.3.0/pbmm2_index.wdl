version 1.0

task Pbmm2Index {
  input {
    Boolean? preset
    Boolean? int_size_no
    Boolean? int_minimizer_window
    Boolean? no_km_er_compression
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String out_dot_mmi
  }
  command <<<
    pbmm2 index \
      ~{out_dot_mmi} \
      ~{if (preset) then "--preset" else ""} \
      ~{if (int_size_no) then "-k" else ""} \
      ~{if (int_minimizer_window) then "-w" else ""} \
      ~{if (no_km_er_compression) then "--no-kmer-compression" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  parameter_meta {
    preset: "STR   Set alignment mode. See below for preset parameter details. Valid choices: (SUBREAD,\\nCCS, ISOSEQ, UNROLLED). [SUBREAD]"
    int_size_no: "INT   k-mer size (no larger than 28). [-1]"
    int_minimizer_window: "INT   Minimizer window size. [-1]"
    no_km_er_compression: "Disable homopolymer-compressed k-mer (compression is active for SUBREAD & UNROLLED\\npresets)."
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    out_dot_mmi: "STR   Output Reference Index"
  }
  output {
    File out_stdout = stdout()
  }
}