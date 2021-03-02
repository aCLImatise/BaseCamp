class: CommandLineTool
id: mauveAligner.cwl
inputs:
- id: in_output
  doc: Output file name.  Prints to screen by default
  type: File?
  inputBinding:
    prefix: --output
- id: in_mums
  doc: MUMs only, do not attempt to determine locally collinear blocks (LCBs)
  type: string?
  inputBinding:
    prefix: --mums
- id: in_no_recursion
  doc: "'t perform recursive anchor identification (implies --no-gapped-alignment)"
  type: string?
  inputBinding:
    prefix: --no-recursion
- id: in_no_lcb_extension
  doc: determining LCBs, don't attempt to extend the LCBs
  type: string?
  inputBinding:
    prefix: --no-lcb-extension
- id: in_seed_size
  doc: Initial seed match size, default is log_2( average seq. length )
  type: long?
  inputBinding:
    prefix: --seed-size
- id: in_max_extension_iterations
  doc: Limit LCB extensions to this number of attempts, default is 4
  type: long?
  inputBinding:
    prefix: --max-extension-iterations
- id: in_eliminate_inclusions
  doc: linked inclusions in subset matches.
  type: string?
  inputBinding:
    prefix: --eliminate-inclusions
- id: in_weight
  doc: Minimum LCB weight in base pairs per sequence
  type: long?
  inputBinding:
    prefix: --weight
- id: in_match_input
  doc: Use specified match file instead of searching for matches
  type: File?
  inputBinding:
    prefix: --match-input
- id: in_lcb_match_input
  doc: Indicates that the match input file contains matches that have been clustered
    into LCBs
  type: boolean?
  inputBinding:
    prefix: --lcb-match-input
- id: in_lcb_input
  doc: Use specified lcb file instead of constructing LCBs (skips LCB generation)
  type: File?
  inputBinding:
    prefix: --lcb-input
- id: in_scratch_path
  doc: For large genomes, use a directory for storage of temporary data.  Should be
    given two or more times to with different paths.
  type: File?
  inputBinding:
    prefix: --scratch-path
- id: in_id_matrix
  doc: Generate LCB stats and write them to the specified file
  type: File?
  inputBinding:
    prefix: --id-matrix
- id: in_island_size
  doc: Find islands larger than the given number
  type: long?
  inputBinding:
    prefix: --island-size
- id: in_island_output
  doc: Output islands the given file (requires --island-size)
  type: File?
  inputBinding:
    prefix: --island-output
- id: in_backbone_size
  doc: Find stretches of backbone longer than the given number of b.p.
  type: long?
  inputBinding:
    prefix: --backbone-size
- id: in_max_backbone_gap
  doc: Allow backbone to be interrupted by gaps up to this length in b.p.
  type: long?
  inputBinding:
    prefix: --max-backbone-gap
- id: in_backbone_output
  doc: Output islands the given file (requires --island-size)
  type: File?
  inputBinding:
    prefix: --backbone-output
- id: in_coverage_output
  doc: Output a coverage list to the specified file (- for stdout)
  type: File?
  inputBinding:
    prefix: --coverage-output
- id: in_repeats
  doc: a repeat map.  Only one sequence can be specified
  type: string?
  inputBinding:
    prefix: --repeats
- id: in_output_guide_tree
  doc: Write out a guide tree to the designated file
  type: File?
  inputBinding:
    prefix: --output-guide-tree
- id: in_collinear
  doc: that input sequences are collinear--they have no rearrangements
  type: string?
  inputBinding:
    prefix: --collinear
- id: in_no_gapped_alignment
  doc: "'t perform a gapped alignment"
  type: string?
  inputBinding:
    prefix: --no-gapped-alignment
- id: in_max_gapped_aligner_length
  doc: Maximum number of base pairs to attempt aligning with the gapped aligner
  type: long?
  inputBinding:
    prefix: --max-gapped-aligner-length
- id: in_min_recursive_gap_length
  doc: Minimum size of gaps that Mauve will perform recursive MUM anchoring on (Default
    is 200)
  type: long?
  inputBinding:
    prefix: --min-recursive-gap-length
- id: in_permutation_matrix_output
  doc: Write out the LCBs as a signed permutation matrix to the given file
  type: File?
  inputBinding:
    prefix: --permutation-matrix-output
- id: in_permutation_matrix_min_weight
  doc: A permutation matrix will be written for every set of LCBs with weight between
    this value and the value of --weight
  type: long?
  inputBinding:
    prefix: --permutation-matrix-min-weight
- id: in_alignment_output_dir
  doc: Outputs a set of alignment files (one per LCB) to a given directory
  type: Directory?
  inputBinding:
    prefix: --alignment-output-dir
- id: in_alignment_output_format
  doc: Selects the output format for --alignment-output-dir
  type: Directory?
  inputBinding:
    prefix: --alignment-output-format
- id: in_output_alignment
  doc: Write out an XMFA format alignment to the designated file
  type: File?
  inputBinding:
    prefix: --output-alignment
- id: in_seq_n_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_s_mln_filename
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name.  Prints to screen by default
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_coverage_output
  doc: Output a coverage list to the specified file (- for stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_coverage_output)
- id: out_output_guide_tree
  doc: Write out a guide tree to the designated file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_guide_tree)
- id: out_permutation_matrix_output
  doc: Write out the LCBs as a signed permutation matrix to the given file
  type: File?
  outputBinding:
    glob: $(inputs.in_permutation_matrix_output)
- id: out_output_alignment
  doc: Write out an XMFA format alignment to the designated file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_alignment)
hints: []
cwlVersion: v1.1
baseCommand:
- mauveAligner
