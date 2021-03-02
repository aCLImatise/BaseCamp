version 1.0

task Alistat {
  input {
    Boolean? report_persequence_info
    Boolean? fast_estimate_average
    Boolean? quiet_suppress_verbose
    File? consensus
    File? ident_mx
    File? in_format
    Boolean? options
    File alignment_file
  }
  command <<<
    alistat \
      ~{alignment_file} \
      ~{if (report_persequence_info) then "-a" else ""} \
      ~{if (fast_estimate_average) then "-f" else ""} \
      ~{if (quiet_suppress_verbose) then "-q" else ""} \
      ~{if defined(consensus) then ("--consensus " +  '"' + consensus + '"') else ""} \
      ~{if defined(ident_mx) then ("--identmx " +  '"' + ident_mx + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    report_persequence_info: ": report per-sequence info, not just a summary"
    fast_estimate_average: ": fast: estimate average %id by sampling (not compatible with -a)"
    quiet_suppress_verbose: ": quiet: suppress verbose header"
    consensus: ": write majority rule consensus sequence(s) in FASTA\\nformat to file <f>"
    ident_mx: ": save a report on all NxN pairwise identities to file <f>"
    in_format: ": specify alignment file format <s>\\nallowed formats: SELEX, MSF, Clustal, a2m, PHYLIP\\n"
    options: ""
    alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}