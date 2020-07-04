version 1.0

task Pbvalidate {
  input {
    String? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    Boolean? quick
    Int? max
    Int? max_records
    String? type
    Boolean? index
    Boolean? strict
    String? x_unit_out
    String? alarms
    Boolean? unaligned
    Boolean? unmapped
    Boolean? aligned
    Boolean? mapped
    String? contents
    String? reference
    File file
  }
  command <<<
    pbvalidate \
      ~{file} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quick" false="" quick} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(max_records) then ("--max-records " +  '"' + max_records + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="--index" false="" index} \
      ~{true="--strict" false="" strict} \
      ~{if defined(x_unit_out) then ("--xunit-out " +  '"' + x_unit_out + '"') else ""} \
      ~{if defined(alarms) then ("--alarms " +  '"' + alarms + '"') else ""} \
      ~{true="--unaligned" false="" unaligned} \
      ~{true="--unmapped" false="" unmapped} \
      ~{true="--aligned" false="" aligned} \
      ~{true="--mapped" false="" mapped} \
      ~{if defined(contents) then ("--contents " +  '"' + contents + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    log_file: "Write the log to file. Default(None) will write to stdout. (default: None)"
    log_level: "Set log level (default: CRITICAL)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress output. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    quick: "Limits validation to the first 100 records (plus file header); equivalent to --max-records=100 (default: False)"
    max: "Exit after MAX_ERRORS have been recorded (DEFAULT: check entire file) (default: None)"
    max_records: "Exit after MAX_RECORDS have been inspected (DEFAULT: check entire file) (default: None)"
    type: "Use the specified file type instead of guessing (default: None)"
    index: "Require index files (.fai or .pbi) (default: False)"
    strict: "Turn on additional validation, primarily for DataSet XML (default: False)"
    x_unit_out: "Xunit test results for Jenkins (default: None)"
    alarms: "alarms.json for errors (default: None)"
    unaligned: "Specify that the file should contain only unmapped alignments (DEFAULT: no requirement) (default: None)"
    unmapped: "Alias for --unaligned (default: None)"
    aligned: "Specify that the file should contain only mapped alignments (DEFAULT: no requirement) (default: None)"
    mapped: "Alias for --aligned (default: None)"
    contents: "Enforce read type (default: None)"
    reference: "Path to optional reference FASTA file, used for additional validation of mapped BAM records (default: None)"
    file: "BAM, FASTA, or DataSet XML file"
  }
}