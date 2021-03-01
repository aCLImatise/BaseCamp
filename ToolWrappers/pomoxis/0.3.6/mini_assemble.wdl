version 1.0

task MiniAssemble {
  input {
    Boolean? fastx_input_reads
    Boolean? reference_fasta_assembly
    Directory? output_folder_default
    File? output_file_prefix
    Boolean? number_minimap_racon
    Boolean? number_racon_rounds
    Boolean? number_racon_shuffles
    Boolean? racon_window_length
    Boolean? keep_files_default
    Boolean? minimaps_default_m
    Boolean? trim_adapters_reads
    Boolean? error_correct_e
    Boolean? reference_length_number
    Boolean? log_commands_running
  }
  command <<<
    mini_assemble \
      ~{if (fastx_input_reads) then "-i" else ""} \
      ~{if (reference_fasta_assembly) then "-r" else ""} \
      ~{if (output_folder_default) then "-o" else ""} \
      ~{if (output_file_prefix) then "-p" else ""} \
      ~{if (number_minimap_racon) then "-t" else ""} \
      ~{if (number_racon_rounds) then "-m" else ""} \
      ~{if (number_racon_shuffles) then "-n" else ""} \
      ~{if (racon_window_length) then "-w" else ""} \
      ~{if (keep_files_default) then "-k" else ""} \
      ~{if (minimaps_default_m) then "-K" else ""} \
      ~{if (trim_adapters_reads) then "-c" else ""} \
      ~{if (error_correct_e) then "-e" else ""} \
      ~{if (reference_length_number) then "-l" else ""} \
      ~{if (log_commands_running) then "-x" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pomoxis:0.3.6--py_0"
  }
  parameter_meta {
    fastx_input_reads: "fastx input reads (required)."
    reference_fasta_assembly: "reference fasta for reference-guided consensus (instead of de novo assembly)"
    output_folder_default: "output folder (default: assm)."
    output_file_prefix: "output file prefix (default: reads)."
    number_minimap_racon: "number of minimap and racon threads (default: 1)."
    number_racon_rounds: "number of racon rounds (default: 4)."
    number_racon_shuffles: "number of racon shuffles (default: 1. If not 1, should be >10)."
    racon_window_length: "racon window length (default: 500)."
    keep_files_default: "keep intermediate files (default: delete)."
    minimaps_default_m: "minimap's -K option (default: 500M)."
    trim_adapters_reads: "trim adapters from reads prior to everything else."
    error_correct_e: "error correct longest e% of reads prior to assembly, or an estimated coverage (e.g. 2x).\\nFor an estimated coverage, the -l option must be a fastx or a length (e.g. 4.8mb)."
    reference_length_number: "Reference length, either as a number (e.g. 4.8mb) or fastx from which length will be calculated."
    log_commands_running: "log all commands before running."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_default = "${in_output_folder_default}"
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}