version 1.0

task Bogart {
  input {
    Boolean? mandatory_path_ovlstore
    Boolean? mandatory_path_gkpstore
    Boolean? mandatory_path_tigstore
    String? mandatory_name_output
    Int? target_number_fragments
    Boolean? rs
    Boolean? ns
    Boolean? cs
    String? rw
    Boolean? join_promiscuous_unitigs
    Boolean? sr
    Boolean? shatter_repeats_rebuild
    Boolean? shatter_repeats_extend
    Boolean? dp
    String? rl
    Int? threads
    Int? more_fraction_error
    Int? more_errors_useful
    Int? more_fraction_when
    Int? more_r_errors
    Int? el
    String? use_most_gigabytes
    Int? load_most_overlaps
    Boolean? create
    Boolean? save
    String? enable_loggingdebugging_specific
    String? disable_loggingdebugging_specific
    String overlap_quality
    String chunk_graph
    String populate
    String intersection_bubbles
    String intersection_joining
    String contained_placement
    String intermediate_unit_igs
    String mate_split_coverage_plot
    String stderr
  }
  command <<<
    bogart \
      ~{overlap_quality} \
      ~{chunk_graph} \
      ~{populate} \
      ~{intersection_bubbles} \
      ~{intersection_joining} \
      ~{contained_placement} \
      ~{intermediate_unit_igs} \
      ~{mate_split_coverage_plot} \
      ~{stderr} \
      ~{if (mandatory_path_ovlstore) then "-O" else ""} \
      ~{if (mandatory_path_gkpstore) then "-G" else ""} \
      ~{if (mandatory_path_tigstore) then "-T" else ""} \
      ~{if defined(mandatory_name_output) then ("-o " +  '"' + mandatory_name_output + '"') else ""} \
      ~{if defined(target_number_fragments) then ("-B " +  '"' + target_number_fragments + '"') else ""} \
      ~{if (rs) then "-RS" else ""} \
      ~{if (ns) then "-NS" else ""} \
      ~{if (cs) then "-CS" else ""} \
      ~{if defined(rw) then ("-RW " +  '"' + rw + '"') else ""} \
      ~{if (join_promiscuous_unitigs) then "-J" else ""} \
      ~{if (sr) then "-SR" else ""} \
      ~{if (shatter_repeats_rebuild) then "-R" else ""} \
      ~{if (shatter_repeats_extend) then "-E" else ""} \
      ~{if (dp) then "-DP" else ""} \
      ~{if defined(rl) then ("-RL " +  '"' + rl + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(more_fraction_error) then ("-eg " +  '"' + more_fraction_error + '"') else ""} \
      ~{if defined(more_errors_useful) then ("-Eg " +  '"' + more_errors_useful + '"') else ""} \
      ~{if defined(more_fraction_when) then ("-em " +  '"' + more_fraction_when + '"') else ""} \
      ~{if defined(more_r_errors) then ("-Em " +  '"' + more_r_errors + '"') else ""} \
      ~{if defined(el) then ("-el " +  '"' + el + '"') else ""} \
      ~{if defined(use_most_gigabytes) then ("-M " +  '"' + use_most_gigabytes + '"') else ""} \
      ~{if defined(load_most_overlaps) then ("-N " +  '"' + load_most_overlaps + '"') else ""} \
      ~{if (create) then "-create" else ""} \
      ~{if (save) then "-save" else ""} \
      ~{if defined(enable_loggingdebugging_specific) then ("-D " +  '"' + enable_loggingdebugging_specific + '"') else ""} \
      ~{if defined(disable_loggingdebugging_specific) then ("-d " +  '"' + disable_loggingdebugging_specific + '"') else ""}
  >>>
  parameter_meta {
    mandatory_path_ovlstore: "Mandatory path to an ovlStore."
    mandatory_path_gkpstore: "Mandatory path to a gkpStore."
    mandatory_path_tigstore: "Mandatory path to a tigStore (can exist or not)."
    mandatory_name_output: "Mandatory name for the output files"
    target_number_fragments: "Target number of fragments per tigStore (consensus) partition"
    rs: "Remove edges to spur reads from best overlap graph."
    ns: "Don't seed promiscuous unitigs with suspicious reads."
    cs: "Don't place contained reads in singleton unitigs."
    rw: "Remove weak overlaps, those in the lower t fraction of erates per overlap end."
    join_promiscuous_unitigs: "Join promiscuous unitigs using unused best edges."
    sr: "Shatter repeats.  Enabled with -R and -E; if neither are supplied,\\nrepeat fragments are promoted to singleton unitigs (unless -DP)."
    shatter_repeats_rebuild: "Shatter repeats, rebuild"
    shatter_repeats_extend: "Shatter repeats, extend unique unitigs"
    dp: "When -R or -E, don't promote shattered leftovers to unitigs.\\nThis WILL cause CGW to fail; diagnostic only."
    rl: "Force reads below 'len' bases to be singletons.\\nThis WILL cause CGW to fail; diagnostic only."
    threads: "Use N compute threads during repeat detection.\\n0 - use OpenMP default (default)\\n1 - use one thread"
    more_fraction_error: "no more than 0.020 fraction (2.0%) error"
    more_errors_useful: "no more than 2 errors (useful with short reads)"
    more_fraction_when: "no more than 0.045 fraction (4.5%) error when bubble popping and repeat splitting"
    more_r_errors: "no more than r errors (useful with short reads)"
    el: "no shorter than 40 bases; AS_OVERLAP_MIN_LEN"
    use_most_gigabytes: "Use at most 'gb' gigabytes of memory for storing overlaps."
    load_most_overlaps: "Load at most 'num' overlaps per read."
    create: "Only create the overlap graph, save to disk and quit."
    save: "Save the overlap graph to disk, and continue."
    enable_loggingdebugging_specific: "enable logging/debugging for a specific component."
    disable_loggingdebugging_specific: "disable logging/debugging for a specific component."
    overlap_quality: "overlapsUsed"
    chunk_graph: "intersections"
    populate: "intersectionBreaking"
    intersection_bubbles: "intersectionBubblesDebug"
    intersection_joining: "intersectionJoiningDebug"
    contained_placement: "happiness"
    intermediate_unit_igs: "mateSplitAnalysis"
    mate_split_coverage_plot: "setParentAndHang"
    stderr: "No output prefix name (-o option) supplied."
  }
  output {
    File out_stdout = stdout()
  }
}