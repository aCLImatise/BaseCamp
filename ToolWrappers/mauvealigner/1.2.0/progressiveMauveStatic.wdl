version 1.0

task ProgressiveMauveStatic {
  input {
    Int? island_gap_size
    File? profile
    File? apply_backbone
    String? disable_backbone
    String? mums
    Int? seed_weight
    File? output_file_name
    File? backbone_output
    File? match_input
    Int? max_gapped_aligner_length
    File? input_guide_tree
    File? output_guide_tree
    String? debug
    File? scratch_path_one
    File? scratch_path_two
    String? collinear
    String? scoring_scheme
    String? no_weight_scaling
    Boolean? max_breakpoint_distance_scale
    Boolean? conservation_distance_scale
    String? muscle_args
    String? skip_refinement
    String? skip_gapped_alignment
    Int? bp_dist_estimate_min_score
    String? mem_clean
    Int? gap_open
    String? repeat_penalty
    Int? gap_extend
    File? substitution_matrix
    Int? weight
    Int? min_scaled_penalty
    Int? hmm_p_go_homologous
    Int? hmm_p_go_unrelated
    Int? hmm_identity
    String? seed_family
    String? solid_seeds
    Int? coding_seeds
    String? disable_cache
    String? no_recursion
  }
  command <<<
    progressiveMauveStatic \
      ~{if defined(island_gap_size) then ("--island-gap-size " +  '"' + island_gap_size + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(apply_backbone) then ("--apply-backbone " +  '"' + apply_backbone + '"') else ""} \
      ~{if defined(disable_backbone) then ("--disable-backbone " +  '"' + disable_backbone + '"') else ""} \
      ~{if defined(mums) then ("--mums " +  '"' + mums + '"') else ""} \
      ~{if defined(seed_weight) then ("--seed-weight " +  '"' + seed_weight + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(backbone_output) then ("--backbone-output " +  '"' + backbone_output + '"') else ""} \
      ~{if defined(match_input) then ("--match-input " +  '"' + match_input + '"') else ""} \
      ~{if defined(max_gapped_aligner_length) then ("--max-gapped-aligner-length " +  '"' + max_gapped_aligner_length + '"') else ""} \
      ~{if defined(input_guide_tree) then ("--input-guide-tree " +  '"' + input_guide_tree + '"') else ""} \
      ~{if defined(output_guide_tree) then ("--output-guide-tree " +  '"' + output_guide_tree + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(scratch_path_one) then ("--scratch-path-1 " +  '"' + scratch_path_one + '"') else ""} \
      ~{if defined(scratch_path_two) then ("--scratch-path-2 " +  '"' + scratch_path_two + '"') else ""} \
      ~{if defined(collinear) then ("--collinear " +  '"' + collinear + '"') else ""} \
      ~{if defined(scoring_scheme) then ("--scoring-scheme " +  '"' + scoring_scheme + '"') else ""} \
      ~{if defined(no_weight_scaling) then ("--no-weight-scaling " +  '"' + no_weight_scaling + '"') else ""} \
      ~{if (max_breakpoint_distance_scale) then "--max-breakpoint-distance-scale" else ""} \
      ~{if (conservation_distance_scale) then "--conservation-distance-scale" else ""} \
      ~{if defined(muscle_args) then ("--muscle-args " +  '"' + muscle_args + '"') else ""} \
      ~{if defined(skip_refinement) then ("--skip-refinement " +  '"' + skip_refinement + '"') else ""} \
      ~{if defined(skip_gapped_alignment) then ("--skip-gapped-alignment " +  '"' + skip_gapped_alignment + '"') else ""} \
      ~{if defined(bp_dist_estimate_min_score) then ("--bp-dist-estimate-min-score " +  '"' + bp_dist_estimate_min_score + '"') else ""} \
      ~{if defined(mem_clean) then ("--mem-clean " +  '"' + mem_clean + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(repeat_penalty) then ("--repeat-penalty " +  '"' + repeat_penalty + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(substitution_matrix) then ("--substitution-matrix " +  '"' + substitution_matrix + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(min_scaled_penalty) then ("--min-scaled-penalty " +  '"' + min_scaled_penalty + '"') else ""} \
      ~{if defined(hmm_p_go_homologous) then ("--hmm-p-go-homologous " +  '"' + hmm_p_go_homologous + '"') else ""} \
      ~{if defined(hmm_p_go_unrelated) then ("--hmm-p-go-unrelated " +  '"' + hmm_p_go_unrelated + '"') else ""} \
      ~{if defined(hmm_identity) then ("--hmm-identity " +  '"' + hmm_identity + '"') else ""} \
      ~{if defined(seed_family) then ("--seed-family " +  '"' + seed_family + '"') else ""} \
      ~{if defined(solid_seeds) then ("--solid-seeds " +  '"' + solid_seeds + '"') else ""} \
      ~{if defined(coding_seeds) then ("--coding-seeds " +  '"' + coding_seeds + '"') else ""} \
      ~{if defined(disable_cache) then ("--disable-cache " +  '"' + disable_cache + '"') else ""} \
      ~{if defined(no_recursion) then ("--no-recursion " +  '"' + no_recursion + '"') else ""}
  >>>
  parameter_meta {
    island_gap_size: "Alignment gaps above this size in nucleotides are considered to be islands [20]"
    profile: "(Not yet implemented) Read an existing sequence alignment in XMFA format and align it to other sequences or alignments"
    apply_backbone: "Read an existing sequence alignment in XMFA format and apply backbone statistics to it"
    disable_backbone: "backbone detection"
    mums: "MUMs only, do not attempt to determine locally collinear blocks (LCBs)"
    seed_weight: "Use the specified seed weight for calculating initial anchors"
    output_file_name: "Output file name.  Prints to screen by default"
    backbone_output: "Backbone output file name (optional)."
    match_input: "Use specified match file instead of searching for matches"
    max_gapped_aligner_length: "Maximum number of base pairs to attempt aligning with the gapped aligner"
    input_guide_tree: "A phylogenetic guide tree in NEWICK format that describes the order in which sequences will be aligned"
    output_guide_tree: "Write out the guide tree used for alignment to a file"
    debug: "in debug mode (perform internal consistency checks--very slow)"
    scratch_path_one: "Designate a path that can be used for temporary data storage.  Two or more paths should be specified."
    scratch_path_two: "Designate a path that can be used for temporary data storage.  Two or more paths should be specified."
    collinear: "that input sequences are collinear--they have no rearrangements"
    scoring_scheme: "Selects the anchoring score function.  Default is extant sum-of-pairs (sp)."
    no_weight_scaling: "'t scale LCB weights by conservation distance and breakpoint distance"
    max_breakpoint_distance_scale: "=<number [0,1]> Set the maximum weight scaling by breakpoint distance.  Defaults to 0.5"
    conservation_distance_scale: "=<number [0,1]> Scale conservation distances by this amount.  Defaults to 0.5"
    muscle_args: "Additional command-line options for MUSCLE.  Any quotes should be escaped with a backslash"
    skip_refinement: "not perform iterative refinement"
    skip_gapped_alignment: "not perform gapped alignment"
    bp_dist_estimate_min_score: "Minimum LCB score for estimating pairwise breakpoint distance"
    mem_clean: "this to true when debugging memory allocations"
    gap_open: "Gap open penalty"
    repeat_penalty: "Sets whether the repeat scores go negative or go to zero for highly repetitive sequences.  Default is negative."
    gap_extend: "Gap extend penalty"
    substitution_matrix: "Nucleotide substitution matrix in NCBI format"
    weight: "Minimum pairwise LCB score"
    min_scaled_penalty: "Minimum breakpoint penalty after scaling the penalty by expected divergence"
    hmm_p_go_homologous: "Probability of transitioning from the unrelated to the homologous state [0.00001]"
    hmm_p_go_unrelated: "Probability of transitioning from the homologous to the unrelated state [0.000000001]"
    hmm_identity: "Expected level of sequence identity among pairs of sequences, ranging between 0 and 1 [0.7]"
    seed_family: "a family of spaced seeds to improve sensitivity"
    solid_seeds: "solid seeds. Do not permit substitutions in anchor matches."
    coding_seeds: "coding pattern seeds. Useful to generate matches coding regions with 3rd codon position degeneracy."
    disable_cache: "recursive anchor search cacheing to workaround a crash bug"
    no_recursion: "recursive anchor search"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_backbone_output = "${in_backbone_output}"
    File out_output_guide_tree = "${in_output_guide_tree}"
  }
}