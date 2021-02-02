version 1.0

task SetFinder {
  input {
    Boolean? _find_cliques
    Boolean? _single_find
    Boolean? _weight_tell
    Int? min
    Int? max
    String? bg_freq
    Int? bg_len
    Boolean? _maximal_require
    Boolean? _unweighted_assume
    Boolean? _when_writing
    String? reorder
    Boolean? _quiet_suppresses
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
      ~{if (_find_cliques) then "-a" else ""} \
      ~{if (_single_find) then "-s" else ""} \
      ~{if (_weight_tell) then "-w" else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(bg_freq) then ("--bg_freq " +  '"' + bg_freq + '"') else ""} \
      ~{if defined(bg_len) then ("--bg_len " +  '"' + bg_len + '"') else ""} \
      ~{if (_maximal_require) then "-x" else ""} \
      ~{if (_unweighted_assume) then "-u" else ""} \
      ~{if (_when_writing) then "-0" else ""} \
      ~{if defined(reorder) then ("--reorder " +  '"' + reorder + '"') else ""} \
      ~{if (_quiet_suppresses) then "-q" else ""} \
      ~{if defined(output_results_file) then ("--output " +  '"' + output_results_file + '"') else ""}
  >>>
  parameter_meta {
    _find_cliques: "--all          Find all cliques."
    _single_find: "--single       Find only one clique (default)."
    _weight_tell: "--weight       Tell only maximum weight (no faster than -s)."
    min: "Search for cliques with weight at least N.  If N=0,\\nsearches for maximum weight clique (default)."
    max: "Search for cliques with weight at most N.  If N=0,\\nno limit is imposed (default).  N being positive is\\nincompatible with \\\"--min 0\\\" (\\\"--min 1\\\" is assumed)."
    bg_freq: "Minimum value for genome_length/primer_counts in a set."
    bg_len: "Length of the background genome (in bases)."
    _maximal_require: "--maximal      Require cliques to be maximal."
    _unweighted_assume: "--unweighted   Assume weight 1 for all vertices."
    _when_writing: "--from-0       Number vertices 0 to n-1 instead of 1 to n when writing."
    reorder: "Reorder with function F.  See below for details."
    _quiet_suppresses: "--quiet        Suppresses progress output.  Specifying -q twice\\nsuppresses all output except the actual result."
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