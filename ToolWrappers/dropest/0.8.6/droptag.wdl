version 1.0

task Droptag {
  input {
    File? config
    String? log_prefix
    String? name
    Int? parallel
    Boolean? save_reads_params
    Boolean? save_stats
    File? reads_per_out_file
    Int? lib_tag
    Boolean? quiet
  }
  command <<<
    droptag \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(log_prefix) then ("--log-prefix " +  '"' + log_prefix + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if (save_reads_params) then "--save-reads-params" else ""} \
      ~{if (save_stats) then "--save-stats" else ""} \
      ~{if (reads_per_out_file) then "--reads-per-out-file" else ""} \
      ~{if defined(lib_tag) then ("--lib-tag " +  '"' + lib_tag + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
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
  output {
    File out_stdout = stdout()
    File out_reads_per_out_file = "${in_reads_per_out_file}"
  }
}