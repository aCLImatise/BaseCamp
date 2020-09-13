version 1.0

task Pbvalidate {
  input {
    File? log_file
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
    File? reference
  }
  command <<<
    pbvalidate \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(max_records) then ("--max-records " +  '"' + max_records + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if defined(x_unit_out) then ("--xunit-out " +  '"' + x_unit_out + '"') else ""} \
      ~{if defined(alarms) then ("--alarms " +  '"' + alarms + '"') else ""} \
      ~{if (unaligned) then "--unaligned" else ""} \
      ~{if (unmapped) then "--unmapped" else ""} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (mapped) then "--mapped" else ""} \
      ~{if defined(contents) then ("--contents " +  '"' + contents + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    log_file: "Write the log to file. Default(None) will write to\\nstdout. (default: None)"
    log_level: "Set log level (default: CRITICAL)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress\\noutput. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    quick: "Limits validation to the first 100 records (plus file\\nheader); equivalent to --max-records=100 (default:\\nFalse)"
    max: "Exit after MAX_ERRORS have been recorded (DEFAULT:\\ncheck entire file) (default: None)"
    max_records: "Exit after MAX_RECORDS have been inspected (DEFAULT:\\ncheck entire file) (default: None)"
    type: "Use the specified file type instead of guessing\\n(default: None)"
    index: "Require index files (.fai or .pbi) (default: False)"
    strict: "Turn on additional validation, primarily for DataSet\\nXML (default: False)"
    x_unit_out: "Xunit test results for Jenkins (default: None)"
    alarms: "alarms.json for errors (default: None)"
    unaligned: "Specify that the file should contain only unmapped\\nalignments (DEFAULT: no requirement) (default: None)"
    unmapped: "Alias for --unaligned (default: None)"
    aligned: "Specify that the file should contain only mapped\\nalignments (DEFAULT: no requirement) (default: None)"
    mapped: "Alias for --aligned (default: None)"
    contents: "Enforce read type (default: None)"
    reference: "Path to optional reference FASTA file, used for\\nadditional validation of mapped BAM records (default:\\nNone)"
  }
  output {
    File out_stdout = stdout()
  }
}