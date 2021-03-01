class: CommandLineTool
id: ghost_tree_filter_alignment_positions.cwl
inputs:
- id: in_foundation_alignment_file
  doc: MAXIMUM_GAP_FREQUENCY
  type: string
  inputBinding:
    position: 0
- id: in_maximum_position_entropy
  doc: OUTPUT_ALIGNMENT_FILE
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- filter-alignment-positions
