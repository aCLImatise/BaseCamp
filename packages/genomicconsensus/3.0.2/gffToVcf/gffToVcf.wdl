version 1.0

task GffToVcf {
  input {
    Boolean? emit_tool_contract
    String? resolved_tool_contract
    File? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    String? global_reference
  }
  command <<<
    gffToVcf \
      ~{if (emit_tool_contract) then "--emit-tool-contract" else ""} \
      ~{if defined(resolved_tool_contract) then ("--resolved-tool-contract " +  '"' + resolved_tool_contract + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(global_reference) then ("--globalReference " +  '"' + global_reference + '"') else ""}
  >>>
  parameter_meta {
    emit_tool_contract: "Emit Tool Contract to stdout (default: False)"
    resolved_tool_contract: "Run Tool directly from a PacBio Resolved tool contract\\n(default: None)"
    log_file: "Write the log to file. Default(None) will write to\\nstdout. (default: None)"
    log_level: "Set log level (default: INFO)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress\\noutput. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    global_reference: "Name of global reference to put in Meta field\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}