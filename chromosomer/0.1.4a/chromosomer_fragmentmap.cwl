class: CommandLineTool
id: chromosomer_fragmentmap.cwl
inputs:
- id: alignment_file
  doc: a BLAST tabular file of fragment alignments to reference chromosomes
  type: string
  inputBinding:
    position: 0
- id: gap_size
  doc: a size of a gap inserted between mapped fragments
  type: string
  inputBinding:
    position: 1
- id: fragment_lengths
  doc: a file containing lengths of fragment sequences; it can be obtained using the
    'chromosomer fastalength' tool
  type: string
  inputBinding:
    position: 2
- id: output_map
  doc: an output fragment map file name
  type: string
  inputBinding:
    position: 3
- id: ratio_threshold
  doc: 'the least ratio of two greatest fragment alignment scores to determine the
    fragment placed to a reference genome (default: 1.2)'
  type: string
  inputBinding:
    prefix: --ratio_threshold
- id: shrink_gaps
  doc: 'shrink large interfragment gaps to the specified size (default: False)'
  type: boolean
  inputBinding:
    prefix: --shrink_gaps
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- fragmentmap
