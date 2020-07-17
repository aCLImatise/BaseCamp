version 1.0

task Bifrost {
  input {
    Boolean? colors
    Boolean? keep_mercy
    Boolean? clip_tips
    Boolean? del_isolated
    Boolean? fast_a
    Boolean? verbose
    Boolean? in_exact
    String build
    String update
    String query
  }
  command <<<
    Bifrost \
      ~{build} \
      ~{update} \
      ~{query} \
      ~{true="--colors" false="" colors} \
      ~{true="--keep-mercy" false="" keep_mercy} \
      ~{true="--clip-tips" false="" clip_tips} \
      ~{true="--del-isolated" false="" del_isolated} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--inexact" false="" in_exact}
  >>>
  parameter_meta {
    colors: "Color the compacted de Bruijn graph (default is no coloring)"
    keep_mercy: "Keep low coverage k-mers connecting tips"
    clip_tips: "Clip tips shorter than k k-mers in length"
    del_isolated: "Delete isolated contigs shorter than k k-mers in length"
    fast_a: "Output file is in FASTA format (only sequences) instead of GFA"
    verbose: "Print information messages during execution"
    in_exact: "Graph is searched with exact and inexact k-mers (1 substitution or indel) from queries"
    build: "Build a compacted de Bruijn graph, with or without colors"
    update: "Update a compacted (possible colored) de Bruijn graph with new sequences"
    query: "Query a compacted (possible colored) de Bruijn graph"
  }
}