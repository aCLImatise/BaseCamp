version 1.0

task GffToBed {
  input {
    Boolean? emit_tool_contract
    String? resolved_tool_contract
    String? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    String? name
    String? description
    String? use_score
  }
  command <<<
    gffToBed \
      ~{true="--emit-tool-contract" false="" emit_tool_contract} \
      ~{if defined(resolved_tool_contract) then ("--resolved-tool-contract " +  '"' + resolved_tool_contract + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(use_score) then ("--useScore " +  '"' + use_score + '"') else ""}
  >>>
  parameter_meta {
    emit_tool_contract: "Emit Tool Contract to stdout (default: False)"
    resolved_tool_contract: "Run Tool directly from a PacBio Resolved tool contract (default: None)"
    log_file: "Write the log to file. Default(None) will write to stdout. (default: None)"
    log_level: "Set log level (default: ERROR)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress output. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    name: "track name to display in header (default: variants)"
    description: "track description to display in header (default: PacBio: snps, insertions, and deletions derived from consensus calls against reference)"
    use_score: "whether or not to use score for feature display (default: 0)"
  }
}