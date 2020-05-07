class: CommandLineTool
id: progressiveMauve.cwl
inputs:
- id: island_gap_size
  doc: Alignment gaps above this size in nucleotides are considered to be islands
    [20]
  type: string
  inputBinding:
    prefix: --island-gap-size
- id: profile
  doc: (Not yet implemented) Read an existing sequence alignment in XMFA format and
    align it to other sequences or alignments
  type: File
  inputBinding:
    prefix: --profile
- id: apply_backbone
  doc: Read an existing sequence alignment in XMFA format and apply backbone statistics
    to it
  type: File
  inputBinding:
    prefix: --apply-backbone
- id: disable_backbone
  doc: backbone detection
  type: string
  inputBinding:
    prefix: --disable-backbone
- id: mums
  doc: MUMs only, do not attempt to determine locally collinear blocks (LCBs)
  type: string
  inputBinding:
    prefix: --mums
- id: seed_weight
  doc: Use the specified seed weight for calculating initial anchors
  type: string
  inputBinding:
    prefix: --seed-weight
- id: output
  doc: Output file name.  Prints to screen by default
  type: File
  inputBinding:
    prefix: --output
- id: backbone_output
  doc: Backbone output file name (optional).
  type: File
  inputBinding:
    prefix: --backbone-output
- id: match_input
  doc: Use specified match file instead of searching for matches
  type: File
  inputBinding:
    prefix: --match-input
- id: max_gapped_aligner_length
  doc: Maximum number of base pairs to attempt aligning with the gapped aligner
  type: string
  inputBinding:
    prefix: --max-gapped-aligner-length
- id: input_guide_tree
  doc: A phylogenetic guide tree in NEWICK format that describes the order in which
    sequences will be aligned
  type: File
  inputBinding:
    prefix: --input-guide-tree
- id: output_guide_tree
  doc: Write out the guide tree used for alignment to a file
  type: File
  inputBinding:
    prefix: --output-guide-tree
- id: debug
  doc: in debug mode (perform internal consistency checks--very slow)
  type: string
  inputBinding:
    prefix: --debug
- id: scratch_path_1
  doc: Designate a path that can be used for temporary data storage.  Two or more
    paths should be specified.
  type: File
  inputBinding:
    prefix: --scratch-path-1
- id: scratch_path_2
  doc: Designate a path that can be used for temporary data storage.  Two or more
    paths should be specified.
  type: File
  inputBinding:
    prefix: --scratch-path-2
- id: collinear
  doc: that input sequences are collinear--they have no rearrangements
  type: string
  inputBinding:
    prefix: --collinear
- id: scoring_scheme
  doc: =<ancestral|sp_ancestral|sp> Selects the anchoring score function.  Default
    is extant sum-of-pairs (sp).
  type: boolean
  inputBinding:
    prefix: --scoring-scheme
- id: no_weight_scaling
  doc: "'t scale LCB weights by conservation distance and breakpoint distance"
  type: string
  inputBinding:
    prefix: --no-weight-scaling
- id: max_breakpoint_distance_scale
  doc: =<number [0,1]> Set the maximum weight scaling by breakpoint distance.  Defaults
    to 0.5
  type: boolean
  inputBinding:
    prefix: --max-breakpoint-distance-scale
- id: conservation_distance_scale
  doc: =<number [0,1]> Scale conservation distances by this amount.  Defaults to 0.5
  type: boolean
  inputBinding:
    prefix: --conservation-distance-scale
- id: muscle_args
  doc: Additional command-line options for MUSCLE.  Any quotes should be escaped with
    a backslash
  type: string
  inputBinding:
    prefix: --muscle-args
- id: skip_refinement
  doc: not perform iterative refinement
  type: string
  inputBinding:
    prefix: --skip-refinement
- id: skip_gapped_alignment
  doc: not perform gapped alignment
  type: string
  inputBinding:
    prefix: --skip-gapped-alignment
- id: bp_dist_estimate_min_score
  doc: Minimum LCB score for estimating pairwise breakpoint distance
  type: string
  inputBinding:
    prefix: --bp-dist-estimate-min-score
- id: mem_clean
  doc: this to true when debugging memory allocations
  type: string
  inputBinding:
    prefix: --mem-clean
- id: gap_open
  doc: Gap open penalty
  type: string
  inputBinding:
    prefix: --gap-open
- id: repeat_penalty
  doc: =<negative|zero> Sets whether the repeat scores go negative or go to zero for
    highly repetitive sequences.  Default is negative.
  type: boolean
  inputBinding:
    prefix: --repeat-penalty
- id: gap_extend
  doc: Gap extend penalty
  type: string
  inputBinding:
    prefix: --gap-extend
- id: substitution_matrix
  doc: Nucleotide substitution matrix in NCBI format
  type: File
  inputBinding:
    prefix: --substitution-matrix
- id: weight
  doc: Minimum pairwise LCB score
  type: string
  inputBinding:
    prefix: --weight
- id: min_scaled_penalty
  doc: Minimum breakpoint penalty after scaling the penalty by expected divergence
  type: string
  inputBinding:
    prefix: --min-scaled-penalty
- id: hmm_p_go_homologous
  doc: Probability of transitioning from the unrelated to the homologous state [0.00001]
  type: string
  inputBinding:
    prefix: --hmm-p-go-homologous
- id: hmm_p_go_unrelated
  doc: Probability of transitioning from the homologous to the unrelated state [0.000000001]
  type: string
  inputBinding:
    prefix: --hmm-p-go-unrelated
- id: hmm_identity
  doc: Expected level of sequence identity among pairs of sequences, ranging between
    0 and 1 [0.7]
  type: string
  inputBinding:
    prefix: --hmm-identity
- id: seed_family
  doc: a family of spaced seeds to improve sensitivity
  type: string
  inputBinding:
    prefix: --seed-family
- id: solid_seeds
  doc: solid seeds. Do not permit substitutions in anchor matches.
  type: string
  inputBinding:
    prefix: --solid-seeds
- id: coding_seeds
  doc: coding pattern seeds. Useful to generate matches coding regions with 3rd codon
    position degeneracy.
  type: string
  inputBinding:
    prefix: --coding-seeds
- id: disable_cache
  doc: recursive anchor search cacheing to workaround a crash bug
  type: string
  inputBinding:
    prefix: --disable-cache
- id: no_recursion
  doc: recursive anchor search
  type: string
  inputBinding:
    prefix: --no-recursion
outputs: []
cwlVersion: v1.1
baseCommand:
- progressiveMauve
