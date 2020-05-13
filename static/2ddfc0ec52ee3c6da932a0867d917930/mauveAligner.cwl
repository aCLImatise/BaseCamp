class: CommandLineTool
id: mauveAligner.cwl
inputs:
- id: output
  doc: Output file name.  Prints to screen by default
  type: File
  inputBinding:
    prefix: --output
- id: mums
  doc: MUMs only, do not attempt to determine locally collinear blocks (LCBs)
  type: string
  inputBinding:
    prefix: --mums
- id: no_recursion
  doc: "'t perform recursive anchor identification (implies --no-gapped-alignment)"
  type: string
  inputBinding:
    prefix: --no-recursion
- id: no_lcb_extension
  doc: determining LCBs, don't attempt to extend the LCBs
  type: string
  inputBinding:
    prefix: --no-lcb-extension
- id: seed_size
  doc: Initial seed match size, default is log_2( average seq. length )
  type: string
  inputBinding:
    prefix: --seed-size
- id: max_extension_iterations
  doc: Limit LCB extensions to this number of attempts, default is 4
  type: string
  inputBinding:
    prefix: --max-extension-iterations
- id: eliminate_inclusions
  doc: linked inclusions in subset matches.
  type: string
  inputBinding:
    prefix: --eliminate-inclusions
- id: weight
  doc: Minimum LCB weight in base pairs per sequence
  type: string
  inputBinding:
    prefix: --weight
- id: match_input
  doc: Use specified match file instead of searching for matches
  type: File
  inputBinding:
    prefix: --match-input
- id: lcb_match_input
  doc: Indicates that the match input file contains matches that have been clustered
    into LCBs
  type: boolean
  inputBinding:
    prefix: --lcb-match-input
- id: lcb_input
  doc: Use specified lcb file instead of constructing LCBs (skips LCB generation)
  type: File
  inputBinding:
    prefix: --lcb-input
- id: scratch_path
  doc: For large genomes, use a directory for storage of temporary data.  Should be
    given two or more times to with different paths.
  type: File
  inputBinding:
    prefix: --scratch-path
- id: id_matrix
  doc: Generate LCB stats and write them to the specified file
  type: File
  inputBinding:
    prefix: --id-matrix
- id: island_size
  doc: Find islands larger than the given number
  type: string
  inputBinding:
    prefix: --island-size
- id: island_output
  doc: Output islands the given file (requires --island-size)
  type: File
  inputBinding:
    prefix: --island-output
- id: backbone_size
  doc: Find stretches of backbone longer than the given number of b.p.
  type: string
  inputBinding:
    prefix: --backbone-size
- id: max_backbone_gap
  doc: Allow backbone to be interrupted by gaps up to this length in b.p.
  type: string
  inputBinding:
    prefix: --max-backbone-gap
- id: backbone_output
  doc: Output islands the given file (requires --island-size)
  type: File
  inputBinding:
    prefix: --backbone-output
- id: coverage_output
  doc: Output a coverage list to the specified file (- for stdout)
  type: File
  inputBinding:
    prefix: --coverage-output
- id: repeats
  doc: a repeat map.  Only one sequence can be specified
  type: string
  inputBinding:
    prefix: --repeats
- id: output_guide_tree
  doc: Write out a guide tree to the designated file
  type: File
  inputBinding:
    prefix: --output-guide-tree
- id: collinear
  doc: that input sequences are collinear--they have no rearrangements
  type: string
  inputBinding:
    prefix: --collinear
- id: no_gapped_alignment
  doc: "'t perform a gapped alignment"
  type: string
  inputBinding:
    prefix: --no-gapped-alignment
- id: max_gapped_aligner_length
  doc: Maximum number of base pairs to attempt aligning with the gapped aligner
  type: string
  inputBinding:
    prefix: --max-gapped-aligner-length
- id: min_recursive_gap_length
  doc: Minimum size of gaps that Mauve will perform recursive MUM anchoring on (Default
    is 200)
  type: string
  inputBinding:
    prefix: --min-recursive-gap-length
- id: permutation_matrix_output
  doc: Write out the LCBs as a signed permutation matrix to the given file
  type: File
  inputBinding:
    prefix: --permutation-matrix-output
- id: permutation_matrix_min_weight
  doc: A permutation matrix will be written for every set of LCBs with weight between
    this value and the value of --weight
  type: string
  inputBinding:
    prefix: --permutation-matrix-min-weight
- id: alignment_output_dir
  doc: Outputs a set of alignment files (one per LCB) to a given directory
  type: Directory
  inputBinding:
    prefix: --alignment-output-dir
- id: alignment_output_format
  doc: Selects the output format for --alignment-output-dir
  type: Directory
  inputBinding:
    prefix: --alignment-output-format
- id: output_alignment
  doc: Write out an XMFA format alignment to the designated file
  type: File
  inputBinding:
    prefix: --output-alignment
outputs: []
cwlVersion: v1.1
baseCommand:
- mauveAligner
