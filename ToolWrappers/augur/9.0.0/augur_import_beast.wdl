version 1.0

task AugurImportBeast {
  input {
    String? output_node_data
    String? mcc
    String? most_recent_tip_date
    String? tip_date_regex
    String? tip_date_format
    String? tip_date_deli_meter
    Boolean? verbose
    String? recursion_limit
  }
  command <<<
    augur import beast \
      ~{if defined(output_node_data) then ("--output-node-data " +  '"' + output_node_data + '"') else ""} \
      ~{if defined(mcc) then ("--mcc " +  '"' + mcc + '"') else ""} \
      ~{if defined(most_recent_tip_date) then ("--most-recent-tip-date " +  '"' + most_recent_tip_date + '"') else ""} \
      ~{if defined(tip_date_regex) then ("--tip-date-regex " +  '"' + tip_date_regex + '"') else ""} \
      ~{if defined(tip_date_format) then ("--tip-date-format " +  '"' + tip_date_format + '"') else ""} \
      ~{if defined(tip_date_deli_meter) then ("--tip-date-delimeter " +  '"' + tip_date_deli_meter + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(recursion_limit) then ("--recursion-limit " +  '"' + recursion_limit + '"') else ""}
  >>>
  parameter_meta {
    output_node_data: "OUTPUT_NODE_DATA"
    mcc: "BEAST MCC tree"
    most_recent_tip_date: "Numeric date of most recent tip in tree (--tip-date-\\nregex, --tip-date-format and --tip-date-delimeter are\\nignored if this is set)"
    tip_date_regex: "regex to extract dates from tip names"
    tip_date_format: "Format of date (if extracted by regex)"
    tip_date_deli_meter: "delimeter used in tip-date-format. Used to match\\npartial dates."
    verbose: "Display verbose output. Only useful for debugging."
    recursion_limit: "Set a custom recursion limit (dangerous!)"
  }
  output {
    File out_stdout = stdout()
  }
}