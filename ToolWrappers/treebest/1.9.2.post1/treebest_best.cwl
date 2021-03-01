class: CommandLineTool
id: treebest_best.cwl
inputs:
- id: in_skip_phyml
  doc: skip PHYML
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_ignore_prob_gene
  doc: ignore the prob. of gene evolution (NOT recommended)
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_apply_constraint_phyml
  doc: apply constraint to PHYML
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_constraining_tree_
  doc: constraining tree                               [null]
  type: File?
  inputBinding:
    prefix: -C
- id: in_species_tree_
  doc: species tree                                 [default]
  type: File?
  inputBinding:
    prefix: -f
- id: in_discard_species_appear
  doc: discard species that do not appear at all
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_skip_mmerge_step
  doc: skip the mmerge step and use the constraining tree instead
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_output_debug_information
  doc: output some debug information
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_suppress_part_phyml
  doc: suppress part of PHYML warnings
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_prefix_intermediate_trees
  doc: prefix of intermediate trees                    [null]
  type: string?
  inputBinding:
    prefix: -p
- id: in_output_tree_
  doc: output tree                                     [null]
  type: File?
  inputBinding:
    prefix: -o
- id: in_only_build_tree
  doc: only build tree for genes from sequenced species
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_collapse_alternative_forms
  doc: collapse alternative splicing forms
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_mask_lowscoring_segments
  doc: do not mask low-scoring segments
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_quality_cutoff_
  doc: quality cut-off                                   [11]
  type: long?
  inputBinding:
    prefix: -F
- id: in_number_rate_categories
  doc: number of rate categories for PHYML-HKY            [2]
  type: long?
  inputBinding:
    prefix: -c
- id: in_tvts_ratio_kappa
  doc: "|e  tv/ts ratio (kappa), 'e' for estimatinig           [e]"
  type: double?
  inputBinding:
    prefix: -k
- id: in_alpha_parameter_gamma
  doc: '|e  alpha parameter for Gamma distribution           [1.0]'
  type: double?
  inputBinding:
    prefix: -a
- id: in_duplication_probability_
  doc: duplication probability                         [0.15]
  type: double?
  inputBinding:
    prefix: -d
- id: in_probability_loss_speciation
  doc: probability of a loss following a speciation    [0.10]
  type: double?
  inputBinding:
    prefix: -l
- id: in_probability_following_duplication
  doc: probability of a loss following a duplication   [0.20]
  type: double?
  inputBinding:
    prefix: -L
- id: in_prob_presence_inconsistent
  doc: prob. of the presence of an inconsistent branch [0.01]
  type: double?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- treebest
- best
