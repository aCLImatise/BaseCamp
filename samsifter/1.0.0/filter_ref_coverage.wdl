version 1.0

task FilterRefCoverage {
  input {
    String? specify_file_analysed
    String? discard
    Boolean? verbose
    Boolean? debug
    Boolean? modify
    Boolean? read_lengths
    Boolean? covered
    Boolean? plot
    String? lci_arg
    String? stats_file
    Int? min_cov
    Int? max_cov
    Int? min_lci
    Int? max_lci
    Int? min_gini
    Int? max_gini
  }
  command <<<
    filter_ref_coverage \
      ~{if defined(specify_file_analysed) then ("--input " +  '"' + specify_file_analysed + '"') else ""} \
      ~{if defined(discard) then ("--discard " +  '"' + discard + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--modify" false="" modify} \
      ~{true="--read_lengths" false="" read_lengths} \
      ~{true="--covered" false="" covered} \
      ~{true="--plot" false="" plot} \
      ~{if defined(lci_arg) then ("--lci_arg " +  '"' + lci_arg + '"') else ""} \
      ~{if defined(stats_file) then ("--stats_file " +  '"' + stats_file + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_cov) then ("--max_cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_lci) then ("--min_lci " +  '"' + min_lci + '"') else ""} \
      ~{if defined(max_lci) then ("--max_lci " +  '"' + max_lci + '"') else ""} \
      ~{if defined(min_gini) then ("--min_gini " +  '"' + min_gini + '"') else ""} \
      ~{if defined(max_gini) then ("--max_gini " +  '"' + max_gini + '"') else ""}
  >>>
  parameter_meta {
    specify_file_analysed: "specify SAM file to be analysed (default: STDIN)"
    discard: "keep or discard entries passing the filter criteria?"
    verbose: "print additional information to stderr"
    debug: "print debug messages to stderr"
    modify: "modify header by adding PG record"
    read_lengths: "analyze read length distributions"
    covered: "covered bases only, ignore uncovered bases"
    plot: "plot distribution(s)"
    lci_arg: "fraction of mean coverage to use for LCI integration"
    stats_file: "override filename for tab-separated statistics"
    min_cov: "minimum average coverage"
    max_cov: "maximum average coverage"
    min_lci: "minimum LCI"
    max_lci: "maximum LCI"
    min_gini: "minimum Gini coefficient"
    max_gini: "maximum Gini coefficient"
  }
}