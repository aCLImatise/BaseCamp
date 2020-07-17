version 1.0

task Bamsieve {
  input {
    String? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    Boolean? show_z_mws
    String? whitelist
    String? blacklist
    Boolean? sub_reads
    String? percentage
    String? count
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
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--show-zmws" false="" show_z_mws} \
      ~{if defined(whitelist) then ("--whitelist " +  '"' + whitelist + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{true="--subreads" false="" sub_reads} \
      ~{if defined(percentage) then ("--percentage " +  '"' + percentage + '"') else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--ignore-metadata" false="" ignore_metadata} \
      ~{true="--relative" false="" relative} \
      ~{true="--anonymize" false="" anonymize} \
      ~{true="--barcodes" false="" barcodes} \
      ~{true="--sample-scraps" false="" sample_scraps} \
      ~{true="--keep-uuid" false="" keep_uuid} \
      ~{if defined(min_adapters) then ("--min-adapters " +  '"' + min_adapters + '"') else ""}
  >>>
  parameter_meta {
    log_file: "Write the log to file. Default(None) will write to stdout. (default: None)"
    log_level: "Set log level (default: WARN)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress output. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    show_z_mws: "Print a list of ZMWs and exit (default: False)"
    whitelist: "Comma-separated list of ZMWs, or file containing whitelist of one hole number per line, or BAM/DataSet file from which to extract ZMWs (default: None)"
    blacklist: "Opposite of --whitelist, specifies ZMWs to discard (default: None)"
    sub_reads: "If set, the whitelist or blacklist will be assumed to contain one subread name per line, or a BAM/DataSet file from which to extract subreads (default: False)"
    percentage: "If you prefer to recover a percentage of a SMRTcell rather than a specific list of reads specify that percentage (range 0-100) here (default: None)"
    count: "Recover a specific number of ZMWs picked at random (default: None)"
    seed: "Random seed for selecting a percentage of reads (default: None)"
    ignore_metadata: "Discard input DataSet metadata (default: False)"
    relative: "Make external resource paths relative (default: False)"
    anonymize: "Randomize sequences for privacy (default: False)"
    barcodes: "Indicates that the whitelist or blacklist contains barcode indices instead of ZMW numbers (default: False)"
    sample_scraps: "If enabled, --percentage and --count will include hole numbers from scraps BAM files when picking a random sample (default is to sample only ZMWs present in subreads BAM). (default: False)"
    keep_uuid: "If enabled, the UUID from the input dataset will be used for the output as well. (default: False)"
    min_adapters: "Minimum number of adapters to filter for (default: None)"
    input_bam: "Input BAM or DataSet from which reads will be read"
    output_bam: "Output BAM or DataSet to which filtered reads will be written (default: None)"
  }
}