class: CommandLineTool
id: progressiveMauve.cwl
inputs:
- id: in_island_gap_size
  doc: Alignment gaps above this size in nucleotides are considered to be islands
    [20]
  type: long?
  inputBinding:
    prefix: --island-gap-size
- id: in_profile
  doc: (Not yet implemented) Read an existing sequence alignment in XMFA format and
    align it to other sequences or alignments
  type: File?
  inputBinding:
    prefix: --profile
- id: in_apply_backbone
  doc: Read an existing sequence alignment in XMFA format and apply backbone statistics
    to it
  type: File?
  inputBinding:
    prefix: --apply-backbone
- id: in_disable_backbone
  doc: backbone detection
  type: string?
  inputBinding:
    prefix: --disable-backbone
- id: in_mums
  doc: MUMs only, do not attempt to determine locally collinear blocks (LCBs)
  type: string?
  inputBinding:
    prefix: --mums
- id: in_seed_weight
  doc: Use the specified seed weight for calculating initial anchors
  type: long?
  inputBinding:
    prefix: --seed-weight
- id: in_output
  doc: Output file name.  Prints to screen by default
  type: File?
  inputBinding:
    prefix: --output
- id: in_backbone_output
  doc: Backbone output file name (optional).
  type: File?
  inputBinding:
    prefix: --backbone-output
- id: in_match_input
  doc: Use specified match file instead of searching for matches
  type: File?
  inputBinding:
    prefix: --match-input
- id: in_max_gapped_aligner_length
  doc: Maximum number of base pairs to attempt aligning with the gapped aligner
  type: long?
  inputBinding:
    prefix: --max-gapped-aligner-length
- id: in_input_guide_tree
  doc: A phylogenetic guide tree in NEWICK format that describes the order in which
    sequences will be aligned
  type: File?
  inputBinding:
    prefix: --input-guide-tree
- id: in_output_guide_tree
  doc: Write out the guide tree used for alignment to a file
  type: File?
  inputBinding:
    prefix: --output-guide-tree
- id: in_debug
  doc: in debug mode (perform internal consistency checks--very slow)
  type: string?
  inputBinding:
    prefix: --debug
- id: in_scratch_path_one
  doc: Designate a path that can be used for temporary data storage.  Two or more
    paths should be specified.
  type: File?
  inputBinding:
    prefix: --scratch-path-1
- id: in_scratch_path_two
  doc: Designate a path that can be used for temporary data storage.  Two or more
    paths should be specified.
  type: File?
  inputBinding:
    prefix: --scratch-path-2
- id: in_collinear
  doc: that input sequences are collinear--they have no rearrangements
  type: string?
  inputBinding:
    prefix: --collinear
- id: in_scoring_scheme
  doc: Selects the anchoring score function.  Default is extant sum-of-pairs (sp).
  type: string?
  inputBinding:
    prefix: --scoring-scheme
- id: in_no_weight_scaling
  doc: "'t scale LCB weights by conservation distance and breakpoint distance"
  type: string?
  inputBinding:
    prefix: --no-weight-scaling
- id: in_max_breakpoint_distance_scale
  doc: =<number [0,1]> Set the maximum weight scaling by breakpoint distance.  Defaults
    to 0.5
  type: boolean?
  inputBinding:
    prefix: --max-breakpoint-distance-scale
- id: in_conservation_distance_scale
  doc: =<number [0,1]> Scale conservation distances by this amount.  Defaults to 0.5
  type: boolean?
  inputBinding:
    prefix: --conservation-distance-scale
- id: in_muscle_args
  doc: Additional command-line options for MUSCLE.  Any quotes should be escaped with
    a backslash
  type: string?
  inputBinding:
    prefix: --muscle-args
- id: in_skip_refinement
  doc: not perform iterative refinement
  type: string?
  inputBinding:
    prefix: --skip-refinement
- id: in_skip_gapped_alignment
  doc: not perform gapped alignment
  type: string?
  inputBinding:
    prefix: --skip-gapped-alignment
- id: in_bp_dist_estimate_min_score
  doc: Minimum LCB score for estimating pairwise breakpoint distance
  type: long?
  inputBinding:
    prefix: --bp-dist-estimate-min-score
- id: in_mem_clean
  doc: this to true when debugging memory allocations
  type: string?
  inputBinding:
    prefix: --mem-clean
- id: in_gap_open
  doc: Gap open penalty
  type: long?
  inputBinding:
    prefix: --gap-open
- id: in_repeat_penalty
  doc: Sets whether the repeat scores go negative or go to zero for highly repetitive
    sequences.  Default is negative.
  type: string?
  inputBinding:
    prefix: --repeat-penalty
- id: in_gap_extend
  doc: Gap extend penalty
  type: long?
  inputBinding:
    prefix: --gap-extend
- id: in_substitution_matrix
  doc: Nucleotide substitution matrix in NCBI format
  type: File?
  inputBinding:
    prefix: --substitution-matrix
- id: in_weight
  doc: Minimum pairwise LCB score
  type: long?
  inputBinding:
    prefix: --weight
- id: in_min_scaled_penalty
  doc: Minimum breakpoint penalty after scaling the penalty by expected divergence
  type: long?
  inputBinding:
    prefix: --min-scaled-penalty
- id: in_hmm_p_go_homologous
  doc: Probability of transitioning from the unrelated to the homologous state [0.00001]
  type: long?
  inputBinding:
    prefix: --hmm-p-go-homologous
- id: in_hmm_p_go_unrelated
  doc: Probability of transitioning from the homologous to the unrelated state [0.000000001]
  type: long?
  inputBinding:
    prefix: --hmm-p-go-unrelated
- id: in_hmm_identity
  doc: Expected level of sequence identity among pairs of sequences, ranging between
    0 and 1 [0.7]
  type: long?
  inputBinding:
    prefix: --hmm-identity
- id: in_seed_family
  doc: a family of spaced seeds to improve sensitivity
  type: string?
  inputBinding:
    prefix: --seed-family
- id: in_solid_seeds
  doc: solid seeds. Do not permit substitutions in anchor matches.
  type: string?
  inputBinding:
    prefix: --solid-seeds
- id: in_coding_seeds
  doc: coding pattern seeds. Useful to generate matches coding regions with 3rd codon
    position degeneracy.
  type: long?
  inputBinding:
    prefix: --coding-seeds
- id: in_disable_cache
  doc: recursive anchor search cacheing to workaround a crash bug
  type: string?
  inputBinding:
    prefix: --disable-cache
- id: in_no_recursion
  doc: recursive anchor search
  type: string?
  inputBinding:
    prefix: --no-recursion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name.  Prints to screen by default
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_backbone_output
  doc: Backbone output file name (optional).
  type: File?
  outputBinding:
    glob: $(inputs.in_backbone_output)
- id: out_output_guide_tree
  doc: Write out the guide tree used for alignment to a file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_guide_tree)
hints: []
cwlVersion: v1.1
baseCommand:
- progressiveMauve
