version 1.0

task MiniAssemble {
  input {
    Boolean? fastx_input_reads
    Boolean? reference_fasta_referenceguided
    Boolean? output_folder_default
    Boolean? output_file_prefix
    Boolean? number_minimap_threads
    Boolean? number_racon_rounds
    Boolean? number_racon_shuffles
    Boolean? racon_window_length
    Boolean? keep_default_delete
    Boolean? minimaps_k_option
    Boolean? trim_adapters_reads
    Boolean? error_correct_e
    Boolean? reference_length_number
    Boolean? log_commands_running
  }
  command <<<
    mini_assemble \
      ~{true="-i" false="" fastx_input_reads} \
      ~{true="-r" false="" reference_fasta_referenceguided} \
      ~{true="-o" false="" output_folder_default} \
      ~{true="-p" false="" output_file_prefix} \
      ~{true="-t" false="" number_minimap_threads} \
      ~{true="-m" false="" number_racon_rounds} \
      ~{true="-n" false="" number_racon_shuffles} \
      ~{true="-w" false="" racon_window_length} \
      ~{true="-k" false="" keep_default_delete} \
      ~{true="-K" false="" minimaps_k_option} \
      ~{true="-c" false="" trim_adapters_reads} \
      ~{true="-e" false="" error_correct_e} \
      ~{true="-l" false="" reference_length_number} \
      ~{true="-x" false="" log_commands_running}
  >>>
  parameter_meta {
    fastx_input_reads: "fastx input reads (required)."
    reference_fasta_referenceguided: "reference fasta for reference-guided consensus (instead of de novo assembly)"
    output_folder_default: "output folder (default: assm)."
    output_file_prefix: "output file prefix (default: reads)."
    number_minimap_threads: "number of minimap and racon threads (default: 1)."
    number_racon_rounds: "number of racon rounds (default: 4)."
    number_racon_shuffles: "number of racon shuffles (default: 1. If not 1, should be >10)."
    racon_window_length: "racon window length (default: 500)."
    keep_default_delete: "keep intermediate files (default: delete)."
    minimaps_k_option: "minimap's -K option (default: 500M)."
    trim_adapters_reads: "trim adapters from reads prior to everything else."
    error_correct_e: "error correct longest e% of reads prior to assembly, or an estimated coverage (e.g. 2x). For an estimated coverage, the -l option must be a fastx or a length (e.g. 4.8mb)."
    reference_length_number: "Reference length, either as a number (e.g. 4.8mb) or fastx from which length will be calculated."
    log_commands_running: "log all commands before running."
  }
}