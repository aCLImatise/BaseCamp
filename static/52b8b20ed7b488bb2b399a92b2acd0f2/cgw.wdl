version 1.0

task Cgw {
  input {
    Boolean? do_cleanup_scaffolds
    String? debug
    Boolean? output_overlap_edges
    String? microhet_score_probability
    Boolean? strongly_enforce_set
    Boolean? gkp_store_path
    Boolean? generate_output_cgw
    Boolean? gg
    Boolean? ignore_chaff_unitigs
    Int? set_max_coverage_stat_microhet
    Int? set_min_coverage
    Boolean? allow_kicking_contig
    Int? set_max_coverage_stat_possible
    Boolean? interleaved_scaffold_merging
    Int? number_recompute_default
    File? restart_checkpoint_see
    Boolean? output_name_required
    Int? how_place_closure
    Int? restart_checkpoint_file
    String? repeat_resolution_level
    Float? place_frags_fraction
    String? stone_throwing_level
    String? shatter
    Int? missing_mate
    String? min_merge_weight
    Boolean? recompute_gaps
    Boolean? reload_mates
    Boolean? inserting_rocksstones_try
    File? load_overlaps_bog
    Boolean? verbose
    Boolean? demote_singleton_scaffolds
    Boolean? turn_demotes_unitigs
  }
  command <<<
    cgw \
      ~{if (do_cleanup_scaffolds) then "-C" else ""} \
      ~{if defined(debug) then ("-D " +  '"' + debug + '"') else ""} \
      ~{if (output_overlap_edges) then "-E" else ""} \
      ~{if defined(microhet_score_probability) then ("-e " +  '"' + microhet_score_probability + '"') else ""} \
      ~{if (strongly_enforce_set) then "-F" else ""} \
      ~{if (gkp_store_path) then "-g" else ""} \
      ~{if (generate_output_cgw) then "-G" else ""} \
      ~{if (gg) then "-GG" else ""} \
      ~{if (ignore_chaff_unitigs) then "-I" else ""} \
      ~{if defined(set_max_coverage_stat_microhet) then ("-i " +  '"' + set_max_coverage_stat_microhet + '"') else ""} \
      ~{if defined(set_min_coverage) then ("-j " +  '"' + set_min_coverage + '"') else ""} \
      ~{if (allow_kicking_contig) then "-K" else ""} \
      ~{if defined(set_max_coverage_stat_possible) then ("-k " +  '"' + set_max_coverage_stat_possible + '"') else ""} \
      ~{if (interleaved_scaffold_merging) then "-M" else ""} \
      ~{if defined(number_recompute_default) then ("-m " +  '"' + number_recompute_default + '"') else ""} \
      ~{if defined(restart_checkpoint_see) then ("-N " +  '"' + restart_checkpoint_see + '"') else ""} \
      ~{if (output_name_required) then "-o" else ""} \
      ~{if defined(how_place_closure) then ("-P " +  '"' + how_place_closure + '"') else ""} \
      ~{if defined(restart_checkpoint_file) then ("-R " +  '"' + restart_checkpoint_file + '"') else ""} \
      ~{if defined(repeat_resolution_level) then ("-r " +  '"' + repeat_resolution_level + '"') else ""} \
      ~{if defined(place_frags_fraction) then ("-S " +  '"' + place_frags_fraction + '"') else ""} \
      ~{if defined(stone_throwing_level) then ("-s " +  '"' + stone_throwing_level + '"') else ""} \
      ~{if defined(shatter) then ("-shatter " +  '"' + shatter + '"') else ""} \
      ~{if defined(missing_mate) then ("-missingMate " +  '"' + missing_mate + '"') else ""} \
      ~{if defined(min_merge_weight) then ("-minmergeweight " +  '"' + min_merge_weight + '"') else ""} \
      ~{if (recompute_gaps) then "-recomputegaps" else ""} \
      ~{if (reload_mates) then "-reloadmates" else ""} \
      ~{if (inserting_rocksstones_try) then "-U" else ""} \
      ~{if defined(load_overlaps_bog) then ("-u " +  '"' + load_overlaps_bog + '"') else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (demote_singleton_scaffolds) then "-Z" else ""} \
      ~{if (turn_demotes_unitigs) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    do_cleanup_scaffolds: "Don't cleanup scaffolds"
    debug: "Debug"
    output_overlap_edges: "output overlap only contig edges"
    microhet_score_probability: "Microhet score probability cutoff"
    strongly_enforce_set: "strongly enforce unique/repeat flag set in unitig, default if not set is to still\\nallow those marked unique to be demoted due to Repeat Branch Pattern or being\\ntoo small"
    gkp_store_path: "gkp Store path (required)"
    generate_output_cgw: "Don't generate output (cgw or cam)"
    gg: "Don't destroy consensus on output (ctgcns will do nothing)"
    ignore_chaff_unitigs: "ignore chaff unitigs"
    set_max_coverage_stat_microhet: "Set max coverage stat for microhet determination of non-uniqueness (default -1)"
    set_min_coverage: "Set min coverage stat for definite uniqueness"
    allow_kicking_contig: "Allow kicking out a contig placed in a scaffold by mate pairs that has no overlaps\\nto both its left and right neighbor contigs."
    set_max_coverage_stat_possible: "Set max coverage stat for possible uniqueness"
    interleaved_scaffold_merging: "don't do interleaved scaffold merging"
    number_recompute_default: "Number of mate samples to recompute an insert size, default is 100"
    restart_checkpoint_see: "restart from checkpoint location 'ckp' (see the timing file)"
    output_name_required: "Output Name (required)"
    how_place_closure: "how to place closure reads.\\n0 - place at first location found\\n1 - place at best gap\\n2 - allow to be placed in multiple gaps"
    restart_checkpoint_file: "restart from checkpoint file number 'ckp'"
    repeat_resolution_level: "repeat resolution level"
    place_frags_fraction: "place all frags in singly-placed surrogates if at least fraction <x> can be placed\\ntwo special cases:\\nif <t> = -1, place all frags in singly-placed surrogates aggressively\\n(which really mean t = 0.0, but triggers a better algorithm)\\nif <t> =  0, do not resolve surrogate fragments"
    stone_throwing_level: "stone throwing level"
    shatter: "Set threshold for shattering scaffolds when loading from checkpoint. Any contigs\\nconnected to a scaffold only by edges with less weight than the threshold will be\\nsplit into a new scaffold (default OFF)"
    missing_mate: "Set threshold (0-1) for the percentage of mates (out of total) that are allowed to be\\nmissing when attempting a scaffold merge (default 0). A value of -1 will ignore all\\nmissing mates"
    min_merge_weight: "Only use weight w or better edges for merging scaffolds."
    recompute_gaps: "if loading a checkpoint, recompute gaps, merging contigs and splitting low weight scaffolds."
    reload_mates: "If loading a checkpoint, also load any new mates from gkpStore."
    inserting_rocksstones_try: "after inserting rocks/stones try shifting contig positions back to their original location\\nwhen computing overlaps to see if they overlap with the rock/stone and allow them to merge\\nif they do"
    load_overlaps_bog: "load these overlaps (from BOG) into the scaffold graph"
    verbose: "verbose"
    demote_singleton_scaffolds: "Don't demote singleton scaffolds"
    turn_demotes_unitigs: "Turn on Check for Repeat Branch Pattern (demotes some unique unitigs to repeat)"
  }
  output {
    File out_stdout = stdout()
  }
}