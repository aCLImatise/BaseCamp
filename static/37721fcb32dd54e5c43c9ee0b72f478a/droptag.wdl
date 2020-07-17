version 1.0

task Droptag {
  input {
    File? config
    String? log_prefix
    String? name
    String? parallel
    Boolean? save_reads_params
    Boolean? save_stats
    Boolean? reads_per_out_file
    String? lib_tag
    Boolean? quiet
  }
  command <<<
    droptag \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(log_prefix) then ("--log-prefix " +  '"' + log_prefix + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{true="--save-reads-params" false="" save_reads_params} \
      ~{true="--save-stats" false="" save_stats} \
      ~{true="--reads-per-out-file" false="" reads_per_out_file} \
      ~{if defined(lib_tag) then ("--lib-tag " +  '"' + lib_tag + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    config: ": xml file with droptag parameters"
    log_prefix: ": logs prefix"
    name: ": alternative output base name"
    parallel: ": number of threads"
    save_reads_params: ": serialize reads parameters to save quality info"
    save_stats: ": save stats to rds file"
    reads_per_out_file: ": maximum number of reads per output file; (0 - unlimited). Overrides corresponding xml parameter."
    lib_tag: "tag : (for IndropV3 with library tag only)"
    quiet: ": disable logs"
  }
}