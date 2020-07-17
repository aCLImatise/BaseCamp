version 1.0

task Zagros {
  input {
    Boolean? output_file_name
    Boolean? width
    Boolean? number
    Boolean? chrom
    Boolean? structure
    Boolean? diagnostic_events
    Boolean? delta
    Boolean? geo
    Boolean? de_weight
    Boolean? indicators
    Boolean? starting_points
    Boolean? verbose
    Boolean? about
    String target_regions_slash_sequences
  }
  command <<<
    zagros \
      ~{target_regions_slash_sequences} \
      ~{true="-output" false="" output_file_name} \
      ~{true="-width" false="" width} \
      ~{true="-number" false="" number} \
      ~{true="-chrom" false="" chrom} \
      ~{true="-structure" false="" structure} \
      ~{true="-diagnostic_events" false="" diagnostic_events} \
      ~{true="-delta" false="" delta} \
      ~{true="-geo" false="" geo} \
      ~{true="-de_weight" false="" de_weight} \
      ~{true="-indicators" false="" indicators} \
      ~{true="-starting-points" false="" starting_points} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    output_file_name: "output file name (default: stdout) "
    width: "width of motifs to find (4 <= w <= 12; default: 6) "
    number: "number of motifs to output (default: 10) "
    chrom: "directory with chrom files (FASTA format) "
    structure: "structure information file "
    diagnostic_events: "diagnostic events information file "
    delta: "provide a fixed value for delta, the offset of  cross-linking site from motif occurrences. -8 <= l <=  8; if omitted, delta is optimised using an exhaustive  search "
    geo: "optimize the geometric distributionparameter for  the distirbution of cross-link sites around motif  occurrences, using the Newton-Raphson algorithm.  If omitted, this parameter is not optimised and is set  to a empirically pre-determined default value. "
    de_weight: "A weight to determine the diagnostic events' level of  contribution (default: 1.1) "
    indicators: "output indicator probabilities for each sequence  and motif to this file "
    starting_points: "number of starting points to try for EM search. Higher  values will be slower, but more likely to find the  global maximum (default: 10) "
    verbose: "print more run info "
    about: "print about message "
    target_regions_slash_sequences: ""
  }
}