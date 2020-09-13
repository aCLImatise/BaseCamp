version 1.0

task Bamsieve {
  input {
    File? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    Boolean? show_z_mws
    Int? whitelist
    String? blacklist
    Boolean? sub_reads
    Int? percentage
    Int? count
    String? seed
    Boolean? ignore_metadata
    Boolean? relative
    Boolean? anonymize
    Boolean? barcodes
    Boolean? sample_scraps
    Boolean? keep_uuid
    Int? min_adapters
    String input_bam
    String output_bam
  }
  command <<<
    bamsieve \
      ~{input_bam} \
      ~{output_bam} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (show_z_mws) then "--show-zmws" else ""} \
      ~{if defined(whitelist) then ("--whitelist " +  '"' + whitelist + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if (sub_reads) then "--subreads" else ""} \
      ~{if defined(percentage) then ("--percentage " +  '"' + percentage + '"') else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (ignore_metadata) then "--ignore-metadata" else ""} \
      ~{if (relative) then "--relative" else ""} \
      ~{if (anonymize) then "--anonymize" else ""} \
      ~{if (barcodes) then "--barcodes" else ""} \
      ~{if (sample_scraps) then "--sample-scraps" else ""} \
      ~{if (keep_uuid) then "--keep-uuid" else ""} \
      ~{if defined(min_adapters) then ("--min-adapters " +  '"' + min_adapters + '"') else ""}
  >>>
  parameter_meta {
    log_file: "Write the log to file. Default(None) will write to\\nstdout. (default: None)"
    log_level: "Set log level (default: WARN)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress\\noutput. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    show_z_mws: "Print a list of ZMWs and exit (default: False)"
    whitelist: "Comma-separated list of ZMWs, or file containing\\nwhitelist of one hole number per line, or BAM/DataSet\\nfile from which to extract ZMWs (default: None)"
    blacklist: "Opposite of --whitelist, specifies ZMWs to discard\\n(default: None)"
    sub_reads: "If set, the whitelist or blacklist will be assumed to\\ncontain one subread name per line, or a BAM/DataSet\\nfile from which to extract subreads (default: False)"
    percentage: "If you prefer to recover a percentage of a SMRTcell\\nrather than a specific list of reads specify that\\npercentage (range 0-100) here (default: None)"
    count: "Recover a specific number of ZMWs picked at random\\n(default: None)"
    seed: "Random seed for selecting a percentage of reads\\n(default: None)"
    ignore_metadata: "Discard input DataSet metadata (default: False)"
    relative: "Make external resource paths relative (default: False)"
    anonymize: "Randomize sequences for privacy (default: False)"
    barcodes: "Indicates that the whitelist or blacklist contains\\nbarcode indices instead of ZMW numbers (default:\\nFalse)"
    sample_scraps: "If enabled, --percentage and --count will include hole\\nnumbers from scraps BAM files when picking a random\\nsample (default is to sample only ZMWs present in\\nsubreads BAM). (default: False)"
    keep_uuid: "If enabled, the UUID from the input dataset will be\\nused for the output as well. (default: False)"
    min_adapters: "Minimum number of adapters to filter for (default:\\nNone)\\n"
    input_bam: "Input BAM or DataSet from which reads will be read"
    output_bam: "Output BAM or DataSet to which filtered reads will be\\nwritten (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}