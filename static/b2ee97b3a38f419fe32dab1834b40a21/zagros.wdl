version 1.0

task Zagros {
  input {
    File? output_file_name
    Boolean? width
    Boolean? number
    Boolean? chrom
    Boolean? structure
    Boolean? diagnostic_events
    Boolean? delta
    Boolean? geo
    Boolean? de_weight
    File? indicators
    Boolean? starting_points
    Boolean? verbose
    Boolean? about
    String target_regions_slash_sequences
  }
  command <<<
    zagros \
      ~{target_regions_slash_sequences} \
      ~{if (output_file_name) then "-output" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (number) then "-number" else ""} \
      ~{if (chrom) then "-chrom" else ""} \
      ~{if (structure) then "-structure" else ""} \
      ~{if (diagnostic_events) then "-diagnostic_events" else ""} \
      ~{if (delta) then "-delta" else ""} \
      ~{if (geo) then "-geo" else ""} \
      ~{if (de_weight) then "-de_weight" else ""} \
      ~{if (indicators) then "-indicators" else ""} \
      ~{if (starting_points) then "-starting-points" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "output file name (default: stdout)"
    width: "width of motifs to find (4 <= w <= 12; default: 6)"
    number: "number of motifs to output (default: 10)"
    chrom: "directory with chrom files (FASTA format)"
    structure: "structure information file"
    diagnostic_events: "diagnostic events information file"
    delta: "provide a fixed value for delta, the offset of\\ncross-linking site from motif occurrences. -8 <= l <=\\n8; if omitted, delta is optimised using an exhaustive\\nsearch"
    geo: "optimize the geometric distributionparameter for\\nthe distirbution of cross-link sites around motif\\noccurrences, using the Newton-Raphson algorithm.\\nIf omitted, this parameter is not optimised and is set\\nto a empirically pre-determined default value."
    de_weight: "A weight to determine the diagnostic events' level of\\ncontribution (default: 1.1)"
    indicators: "output indicator probabilities for each sequence\\nand motif to this file"
    starting_points: "number of starting points to try for EM search. Higher\\nvalues will be slower, but more likely to find the\\nglobal maximum (default: 10)"
    verbose: "print more run info"
    about: "print about message"
    target_regions_slash_sequences: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_indicators = "${in_indicators}"
  }
}