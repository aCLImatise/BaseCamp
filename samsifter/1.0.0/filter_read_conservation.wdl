version 1.0

task FilterReadConservation {
  input {
    String? specify_file_analysed
    String? discard
    Boolean? verbose
    Boolean? debug
    Boolean? modify
    String? as_dev
    Int? max_tax_a
  }
  command <<<
    filter_read_conservation \
      ~{if defined(specify_file_analysed) then ("--input " +  '"' + specify_file_analysed + '"') else ""} \
      ~{if defined(discard) then ("--discard " +  '"' + discard + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--modify" false="" modify} \
      ~{if defined(as_dev) then ("--as_dev " +  '"' + as_dev + '"') else ""} \
      ~{if defined(max_tax_a) then ("--max_taxa " +  '"' + max_tax_a + '"') else ""}
  >>>
  parameter_meta {
    specify_file_analysed: "specify SAM file to be analysed (default: STDIN)"
    discard: "keep or discard entries passing the filter criteria?"
    verbose: "print additional information to stderr"
    debug: "print debug messages to stderr"
    modify: "modify header by adding PG record"
    as_dev: "permitted deviation from max alignment score [5]"
    max_tax_a: "maximum number of taxa [10]"
  }
}