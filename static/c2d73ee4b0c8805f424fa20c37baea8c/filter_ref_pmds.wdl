version 1.0

task FilterRefPmds {
  input {
    String? specify_file_analysed
    String? discard
    Boolean? verbose
    Boolean? debug
    Boolean? modify
    String? pm_ds
    String? reads_perc
    String? reads_total
  }
  command <<<
    filter_ref_pmds \
      ~{if defined(specify_file_analysed) then ("--input " +  '"' + specify_file_analysed + '"') else ""} \
      ~{if defined(discard) then ("--discard " +  '"' + discard + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--modify" false="" modify} \
      ~{if defined(pm_ds) then ("--pmds " +  '"' + pm_ds + '"') else ""} \
      ~{if defined(reads_perc) then ("--reads_perc " +  '"' + reads_perc + '"') else ""} \
      ~{if defined(reads_total) then ("--reads_total " +  '"' + reads_total + '"') else ""}
  >>>
  parameter_meta {
    specify_file_analysed: "specify SAM file to be analysed (default: STDIN)"
    discard: "keep or discard entries passing the filter criteria?"
    verbose: "print additional information to stderr"
    debug: "print debug messages to stderr"
    modify: "modify header by adding PG record"
    pm_ds: "post-mortem degradation score (PMDS) threshold"
    reads_perc: "attributed read threshold (percent)"
    reads_total: "attributed read threshold (total)"
  }
}