version 1.0

task MetagraphCoordinate {
  input {
    Boolean? fwd_and_reverse
    Boolean? annotator
    File? outfile_base
    Boolean? coord_binsize
    Boolean? fast
    Boolean? parallel
    Boolean? verbose
    String? i
    Int fast_a_one
  }
  command <<<
    metagraph coordinate \
      ~{fast_a_one} \
      ~{if (fwd_and_reverse) then "--fwd-and-reverse" else ""} \
      ~{if (annotator) then "--annotator" else ""} \
      ~{if (outfile_base) then "--outfile-base" else ""} \
      ~{if (coord_binsize) then "--coord-binsize" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    fwd_and_reverse: "process both forward and reverse complement sequences [off]"
    annotator: "[STR]            annotator to update []"
    outfile_base: "[STR]         basename of output file [<GRAPH>]"
    coord_binsize: "[INT]        stepsize for k-mer coordinates in input sequences from the fasta files [1000]"
    fast: "annotate in fast regime [off]"
    parallel: "[INT]             use multiple threads for computation [1]"
    verbose: "switch on verbose output [off]"
    i: ""
    fast_a_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile_base = "${in_outfile_base}"
  }
}