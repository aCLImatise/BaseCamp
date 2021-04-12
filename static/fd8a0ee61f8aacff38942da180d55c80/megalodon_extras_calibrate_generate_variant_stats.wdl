version 1.0

task MegalodonExtrasCalibrateGenerateVariantStats {
  input {
    Float? guppy_config
    File? guppy_server_path
    String? guppy_server_port
    String? guppy_params
    Int? guppy_concurrent_reads
    Float? guppy_timeout
    Directory? guppy_logs_output_directory
    File? reference
    File? filename_output_statistics
    File? read_ids_filename
    Array[String] devices
    Boolean? not_recursive
    Int? processes
    Boolean? suppress_progress
    Boolean? compute_false_reference_scores
    String variant_calibration_statistics_dot_txt
  }
  command <<<
    megalodon_extras calibrate generate_variant_stats \
      ~{variant_calibration_statistics_dot_txt} \
      ~{if defined(guppy_config) then ("--guppy-config " +  '"' + guppy_config + '"') else ""} \
      ~{if defined(guppy_server_path) then ("--guppy-server-path " +  '"' + guppy_server_path + '"') else ""} \
      ~{if defined(guppy_server_port) then ("--guppy-server-port " +  '"' + guppy_server_port + '"') else ""} \
      ~{if defined(guppy_params) then ("--guppy-params " +  '"' + guppy_params + '"') else ""} \
      ~{if defined(guppy_concurrent_reads) then ("--guppy-concurrent-reads " +  '"' + guppy_concurrent_reads + '"') else ""} \
      ~{if defined(guppy_timeout) then ("--guppy-timeout " +  '"' + guppy_timeout + '"') else ""} \
      ~{if defined(guppy_logs_output_directory) then ("--guppy-logs-output-directory " +  '"' + guppy_logs_output_directory + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(filename_output_statistics) then ("--output " +  '"' + filename_output_statistics + '"') else ""} \
      ~{if defined(read_ids_filename) then ("--read-ids-filename " +  '"' + read_ids_filename + '"') else ""} \
      ~{if defined(devices) then ("--devices " +  '"' + devices + '"') else ""} \
      ~{if (not_recursive) then "--not-recursive" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (suppress_progress) then "--suppress-progress" else ""} \
      ~{if (compute_false_reference_scores) then "--compute-false-reference-scores" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0"
  }
  parameter_meta {
    guppy_config: "Guppy config. Default:\\ndna_r9.4.1_450bps_modbases_5mc_hac.cfg"
    guppy_server_path: "Path to guppy server executable. Default: ./ont-\\nguppy/bin/guppy_basecall_server"
    guppy_server_port: "Guppy server port. Default: Guppy auto"
    guppy_params: "Extra guppy server parameters. Main purpose for\\noptimal performance based on compute environment.\\nQuote parameters to avoid them being parsed by\\nmegalodon."
    guppy_concurrent_reads: "Number of reads to process concurrently within each\\nworker processes. Default: 10"
    guppy_timeout: "Timeout to wait for guppy server to call a single read\\nin seconds. Default: 120.000000"
    guppy_logs_output_directory: "Directory to output guppy logs. Default: guppy_logs"
    reference: "Reference FASTA file used for mapping called reads."
    filename_output_statistics: "Filename to output statistics. Default:"
    read_ids_filename: "File containing read ids to process (one per line).\\nDefault: All reads"
    devices: "GPU devices for guppy or taiyaki basecalling backends."
    not_recursive: "Only search for fast5 read files directly found within\\nthe fast5 directory. Default: search recursively"
    processes: "Number of parallel processes. Default: 1"
    suppress_progress: "Suppress progress bar."
    compute_false_reference_scores: "Compute scores given a false reference. Default:\\ncompute all scores with ground truth correct\\nreference.***** Experimental feature, may contain bugs\\n*****.\\n"
    variant_calibration_statistics_dot_txt: "--num-reads NUM_READS"
  }
  output {
    File out_stdout = stdout()
    Directory out_guppy_logs_output_directory = "${in_guppy_logs_output_directory}"
    File out_filename_output_statistics = "${in_filename_output_statistics}"
  }
}