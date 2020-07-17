version 1.0

task Pbmm2Index {
  input {
    Boolean? preset
    Boolean? int_kmer_size
    Boolean? int_window_size
    Boolean? no_km_er_compression
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String out_dot_mmi
  }
  command <<<
    pbmm2 index \
      ~{out_dot_mmi} \
      ~{true="--preset" false="" preset} \
      ~{true="-k" false="" int_kmer_size} \
      ~{true="-w" false="" int_window_size} \
      ~{true="--no-kmer-compression" false="" no_km_er_compression} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    preset: "STR   Set alignment mode. See below for preset parameter details. Valid choices: (SUBREAD, CCS, ISOSEQ, UNROLLED). [SUBREAD]"
    int_kmer_size: "INT   k-mer size (no larger than 28). [-1]"
    int_window_size: "INT   Minimizer window size. [-1]"
    no_km_er_compression: "Disable homopolymer-compressed k-mer (compression is active for SUBREAD & UNROLLED presets)."
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    out_dot_mmi: "STR   Output Reference Index"
  }
}