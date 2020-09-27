version 1.0

task DigestiflowcliIngest {
  input {
    Boolean? analyze_adapters
    Boolean? dry_run
    Boolean? force_analyze_adapters
    Boolean? log_token
    Boolean? no_register
    Boolean? no_update
    Boolean? quiet
    Boolean? update_if_state_final
    Boolean? verbose
    Int? min_index_fraction
    Int? sample_reads_per_tile
    Int? threads
    Boolean? v
    String computed
  }
  command <<<
    digestiflow_cli ingest \
      ~{computed} \
      ~{if (analyze_adapters) then "--analyze-adapters" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (force_analyze_adapters) then "--force-analyze-adapters" else ""} \
      ~{if (log_token) then "--log-token" else ""} \
      ~{if (no_register) then "--no-register" else ""} \
      ~{if (no_update) then "--no-update" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (update_if_state_final) then "--update-if-state-final" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(min_index_fraction) then ("--min-index-fraction " +  '"' + min_index_fraction + '"') else ""} \
      ~{if defined(sample_reads_per_tile) then ("--sample-reads-per-tile " +  '"' + sample_reads_per_tile + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    analyze_adapters: "Read adapters from binary base call files"
    dry_run: "Do not perform any modifying operations"
    force_analyze_adapters: "Force analysis of adapters even if adapter histogram information is present for all\\nindex reads."
    log_token: "Print authentation token to log file (useful for debugging, possible leaking\\nsecurity issue)"
    no_register: "Whether or not to register flow cell via the API."
    no_update: "Whether or not to update the flow cell via the API"
    quiet: "Decrease verbosity"
    update_if_state_final: "Update flow cell information sequencing is in a final state (e.g., completed or\\nfailed).  Updating index histograms is separate from this."
    verbose: "Increase verbosity"
    min_index_fraction: "Minimal fraction of reads that must show index for index histogram to be"
    sample_reads_per_tile: "Number of reads to sample per tile"
    threads: "Number of additional threads to use for (de)compression in I/O. [default: 0]"
    v: ""
    computed: "--project-uuid <PROJECT_UUID>      The UUID of the project to write to."
  }
  output {
    File out_stdout = stdout()
  }
}