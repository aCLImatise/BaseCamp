version 1.0

task BuildUnitigs {
  input {
    Boolean? mandatory_path_ovlstore
    Boolean? mandatory_path_gkpstore
    Boolean? mandatory_path_tigstore
    String? mandatory_name_output
    Int? target_number_fragments
    Boolean? enable_experimental_short
    Boolean? enable_experimental_long
    Boolean? break_promisciuous_unitigs
    Int? break_unitig_has
    Int? no_more_fraction
    Int? no_more_errors
    String? enable_loggingdebugging_specific
    String overlap_quality
    String chunk_graph
    String populate
    String intersection_bubbles
    String intersection_joining
    String contained_placement
    String intermediate_unit_igs
    String mate_split_discontinuous
    String mate_split_coverage_plot
  }
  command <<<
    buildUnitigs \
      ~{overlap_quality} \
      ~{chunk_graph} \
      ~{populate} \
      ~{intersection_bubbles} \
      ~{intersection_joining} \
      ~{contained_placement} \
      ~{intermediate_unit_igs} \
      ~{mate_split_discontinuous} \
      ~{mate_split_coverage_plot} \
      ~{if (mandatory_path_ovlstore) then "-O" else ""} \
      ~{if (mandatory_path_gkpstore) then "-G" else ""} \
      ~{if (mandatory_path_tigstore) then "-T" else ""} \
      ~{if defined(mandatory_name_output) then ("-o " +  '"' + mandatory_name_output + '"') else ""} \
      ~{if defined(target_number_fragments) then ("-B " +  '"' + target_number_fragments + '"') else ""} \
      ~{if (enable_experimental_short) then "-U" else ""} \
      ~{if (enable_experimental_long) then "-J" else ""} \
      ~{if (break_promisciuous_unitigs) then "-b" else ""} \
      ~{if defined(break_unitig_has) then ("-m " +  '"' + break_unitig_has + '"') else ""} \
      ~{if defined(no_more_fraction) then ("-e " +  '"' + no_more_fraction + '"') else ""} \
      ~{if defined(no_more_errors) then ("-E " +  '"' + no_more_errors + '"') else ""} \
      ~{if defined(enable_loggingdebugging_specific) then ("-D " +  '"' + enable_loggingdebugging_specific + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_ovlstore: "Mandatory path to an ovlStore."
    mandatory_path_gkpstore: "Mandatory path to a gkpStore."
    mandatory_path_tigstore: "Mandatory path to a tigStore (can exist or not)."
    mandatory_name_output: "Mandatory name for the output files"
    target_number_fragments: "Target number of fragments per tigStore (consensus) partition"
    enable_experimental_short: "Enable EXPERIMENTAL short unitig merging (aka bubble popping)."
    enable_experimental_long: "Enable EXPERIMENTAL long unitig joining."
    break_promisciuous_unitigs: "Break promisciuous unitigs at unitig intersection points"
    break_unitig_has: "Break a unitig if a region has more than 7 bad mates"
    no_more_fraction: "no more than 0.015 fraction (1.5%) error"
    no_more_errors: "no more than 0 errors"
    enable_loggingdebugging_specific: "enable logging/debugging for a specific component."
    overlap_quality: "overlapsUsed"
    chunk_graph: "intersections"
    populate: "intersectionBreaking"
    intersection_bubbles: "intersectionBubblesDebug"
    intersection_joining: "intersectionJoiningDebug"
    contained_placement: "happiness"
    intermediate_unit_igs: "mateSplitAnalysis"
    mate_split_discontinuous: "mateSplitUnhappyContains"
    mate_split_coverage_plot: "stderr"
  }
  output {
    File out_stdout = stdout()
  }
}