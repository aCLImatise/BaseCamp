version 1.0

task IgdiscoverUpstream {
  input {
    Int? max_error_percentage
    Int? max_fr_one_errors
    Int? max_cdr_one_errors
    Int? min_consensus_size
    Int? consensus_threshold
    Boolean? no_ambiguous
    Boolean? part
    Boolean? debug
  }
  command <<<
    igdiscover upstream \
      ~{if defined(max_error_percentage) then ("--max-error-percentage " +  '"' + max_error_percentage + '"') else ""} \
      ~{if defined(max_fr_one_errors) then ("--max-FR1-errors " +  '"' + max_fr_one_errors + '"') else ""} \
      ~{if defined(max_cdr_one_errors) then ("--max-CDR1-errors " +  '"' + max_cdr_one_errors + '"') else ""} \
      ~{if defined(min_consensus_size) then ("--min-consensus-size " +  '"' + min_consensus_size + '"') else ""} \
      ~{if defined(consensus_threshold) then ("--consensus-threshold " +  '"' + consensus_threshold + '"') else ""} \
      ~{if (no_ambiguous) then "--no-ambiguous" else ""} \
      ~{if (part) then "--part" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_error_percentage: "Allow PERCENT errors in V gene match. Default: 1"
    max_fr_one_errors: "Allow PERCENT errors in FR1 region."
    max_cdr_one_errors: "Allow PERCENT errors in CDR1 region."
    min_consensus_size: "Require at least N sequences for consensus. Default: 1"
    consensus_threshold: "Threshold for consensus computation. Default: 75%"
    no_ambiguous: "Discard consensus sequences with ambiguous bases"
    part: "{UTR,leader,UTR+leader}\\nWhich part of the sequence before the V gene match to\\nanalyze. Default: UTR+leader"
    debug: "Enable debugging output"
  }
  output {
    File out_stdout = stdout()
  }
}