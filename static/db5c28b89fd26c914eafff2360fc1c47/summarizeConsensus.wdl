version 1.0

task SummarizeConsensus {
  input {
    Boolean? emit_tool_contract
    String? resolved_tool_contract
    String? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    String? variants_gff
    String? output_alignmentsummarygff_filename
    String alignment_summary
  }
  command <<<
    summarizeConsensus \
      ~{alignment_summary} \
      ~{true="--emit-tool-contract" false="" emit_tool_contract} \
      ~{if defined(resolved_tool_contract) then ("--resolved-tool-contract " +  '"' + resolved_tool_contract + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(variants_gff) then ("--variantsGff " +  '"' + variants_gff + '"') else ""} \
      ~{if defined(output_alignmentsummarygff_filename) then ("--output " +  '"' + output_alignmentsummarygff_filename + '"') else ""}
  >>>
  parameter_meta {
    emit_tool_contract: "Emit Tool Contract to stdout (default: False)"
    resolved_tool_contract: "Run Tool directly from a PacBio Resolved tool contract (default: None)"
    log_file: "Write the log to file. Default(None) will write to stdout. (default: None)"
    log_level: "Set log level (default: ERROR)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress output. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    variants_gff: "Input variants.gff or variants.gff.gz filename (default: None)"
    output_alignmentsummarygff_filename: "Output alignment_summary.gff filename (default: None)"
    alignment_summary: "Alignment summary GFF file"
  }
}