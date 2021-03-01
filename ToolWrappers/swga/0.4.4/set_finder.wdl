version 1.0

task SetFinder {
  input {
    Boolean? all
    Boolean? single
    Boolean? weight
    Int? min
    Int? max
    String? bg_freq
    Int? bg_len
    Boolean? maximal
    Boolean? unweighted
    Boolean? from_zero
    String? reorder
    Boolean? quiet
    File? output_results_file
    String ordering_same_order
    String reverse
    String default
    String unweighted_coloring
    String weighted_coloring
    String degree
    String random
  }
  command <<<
    set_finder \
      ~{ordering_same_order} \
      ~{reverse} \
      ~{default} \
      ~{unweighted_coloring} \
      ~{weighted_coloring} \
      ~{degree} \
      ~{random} \
      ~{if (all) then "--all" else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (weight) then "--weight" else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(bg_freq) then ("--bg_freq " +  '"' + bg_freq + '"') else ""} \
      ~{if defined(bg_len) then ("--bg_len " +  '"' + bg_len + '"') else ""} \
      ~{if (maximal) then "--maximal" else ""} \
      ~{if (unweighted) then "--unweighted" else ""} \
      ~{if (from_zero) then "--from-0" else ""} \
      ~{if defined(reorder) then ("--reorder " +  '"' + reorder + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(output_results_file) then ("--output " +  '"' + output_results_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "Find all cliques."
    single: "Find only one clique (default)."
    weight: "Tell only maximum weight (no faster than -s)."
    min: "Search for cliques with weight at least N.  If N=0,\\nsearches for maximum weight clique (default)."
    max: "Search for cliques with weight at most N.  If N=0,\\nno limit is imposed (default).  N being positive is\\nincompatible with \\\"--min 0\\\" (\\\"--min 1\\\" is assumed)."
    bg_freq: "Minimum value for genome_length/primer_counts in a set."
    bg_len: "Length of the background genome (in bases)."
    maximal: "Require cliques to be maximal."
    unweighted: "Assume weight 1 for all vertices."
    from_zero: "Number vertices 0 to n-1 instead of 1 to n when writing."
    reorder: "Reorder with function F.  See below for details."
    quiet: "Suppresses progress output.  Specifying -q twice\\nsuppresses all output except the actual result."
    output_results_file: "Output results to file F."
    ordering_same_order: "No ordering (same order as in the file)."
    reverse: "Reverse order as in the file."
    default: "One of the two below, depending on weightedness."
    unweighted_coloring: "Coloring method efficient for unweighted graphs."
    weighted_coloring: "Coloring method efficient for weighted graphs."
    degree: "Order by ascending degree."
    random: "Random order."
  }
  output {
    File out_stdout = stdout()
    File out_output_results_file = "${in_output_results_file}"
  }
}