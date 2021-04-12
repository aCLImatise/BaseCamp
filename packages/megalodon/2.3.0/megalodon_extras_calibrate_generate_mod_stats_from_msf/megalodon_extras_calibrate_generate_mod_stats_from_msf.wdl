version 1.0

task MegalodonExtrasCalibrateGenerateModStatsFromMsf {
  input {
    Boolean? motif
    Int? edge_buffer
    Int? mod_context_bases
    Float? guppy_config
    File? guppy_server_path
    String? guppy_server_port
    String? guppy_params
    Int? guppy_concurrent_reads
    Float? guppy_timeout
    Directory? guppy_logs_output_directory
    File? out_filename
    File? log_filename
    String? modified_bases_set
    Int? num_reads
    Array[String] devices
    Int? processes
    Boolean? quiet
  }
  command <<<
    megalodon_extras calibrate generate_mod_stats_from_msf \
      ~{if (motif) then "--motif" else ""} \
      ~{if defined(edge_buffer) then ("--edge-buffer " +  '"' + edge_buffer + '"') else ""} \
      ~{if defined(mod_context_bases) then ("--mod-context-bases " +  '"' + mod_context_bases + '"') else ""} \
      ~{if defined(guppy_config) then ("--guppy-config " +  '"' + guppy_config + '"') else ""} \
      ~{if defined(guppy_server_path) then ("--guppy-server-path " +  '"' + guppy_server_path + '"') else ""} \
      ~{if defined(guppy_server_port) then ("--guppy-server-port " +  '"' + guppy_server_port + '"') else ""} \
      ~{if defined(guppy_params) then ("--guppy-params " +  '"' + guppy_params + '"') else ""} \
      ~{if defined(guppy_concurrent_reads) then ("--guppy-concurrent-reads " +  '"' + guppy_concurrent_reads + '"') else ""} \
      ~{if defined(guppy_timeout) then ("--guppy-timeout " +  '"' + guppy_timeout + '"') else ""} \
      ~{if defined(guppy_logs_output_directory) then ("--guppy-logs-output-directory " +  '"' + guppy_logs_output_directory + '"') else ""} \
      ~{if defined(out_filename) then ("--out-filename " +  '"' + out_filename + '"') else ""} \
      ~{if defined(log_filename) then ("--log-filename " +  '"' + log_filename + '"') else ""} \
      ~{if defined(modified_bases_set) then ("--modified-bases-set " +  '"' + modified_bases_set + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(devices) then ("--devices " +  '"' + devices + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0"
  }
  parameter_meta {
    motif: "['MOTIF', 'REL_POS'] ['MOTIF', 'REL_POS']\\nMotif description. Motifs include two values\\nspecifying the sequence motif (may include ambiguity\\ncodes) and the relative modified position. Multiple\\n`--motif` values may be provided."
    edge_buffer: "Minimum distance from edge of read to output score.\\nDefault: 30"
    mod_context_bases: "Context bases for modified base calling. Default: 15"
    guppy_config: "Guppy config. Default:\\ndna_r9.4.1_450bps_modbases_5mc_hac.cfg"
    guppy_server_path: "Path to guppy server executable. Default: ./ont-\\nguppy/bin/guppy_basecall_server"
    guppy_server_port: "Guppy server port. Default: Guppy auto"
    guppy_params: "Extra guppy server parameters. Main purpose for\\noptimal performance based on compute environment.\\nQuote parameters to avoid them being parsed by\\nmegalodon."
    guppy_concurrent_reads: "Number of reads to process concurrently within each\\nworker processes. Default: 10"
    guppy_timeout: "Timeout to wait for guppy server to call a single read\\nin seconds. Default: 120.000000"
    guppy_logs_output_directory: "Directory to output guppy logs. Default: guppy_logs"
    out_filename: "Output filename for modified base statistics. Should\\nend in \\\"npz\\\". Default: mod_calibration_statistics.npz"
    log_filename: "Output filename for text summary. Default:\\nmod_calibration_statistics.log"
    modified_bases_set: "Only process these modified bases (single letter\\ncodes). Present multiple codes as a single string"
    num_reads: "Total number of reads to process."
    devices: "GPU devices for guppy basecalling backend."
    processes: "Number of parallel CPU processes. Default: 1"
    quiet: "Suppress progress information."
  }
  output {
    File out_stdout = stdout()
    Directory out_guppy_logs_output_directory = "${in_guppy_logs_output_directory}"
    File out_out_filename = "${in_out_filename}"
    File out_log_filename = "${in_log_filename}"
  }
}