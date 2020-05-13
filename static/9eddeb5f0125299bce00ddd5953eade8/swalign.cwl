class: CommandLineTool
id: swalign.cwl
inputs:
- id: m
  doc: 'Match score (default: 2)'
  type: string
  inputBinding:
    prefix: -m
- id: mm
  doc: 'Mismatch penalty (default: 1)'
  type: string
  inputBinding:
    prefix: -mm
- id: gap
  doc: 'Gap penalty (default: 1)'
  type: string
  inputBinding:
    prefix: -gap
- id: gap_ext
  doc: 'Gap extension penalty (default: 1)'
  type: string
  inputBinding:
    prefix: -gapext
- id: gap_decay
  doc: 'Decay the gap extension penalty (default: 0.0)'
  type: string
  inputBinding:
    prefix: -gapdecay
- id: wrap
  doc: Wrap alignments when they are longer than N bases
  type: string
  inputBinding:
    prefix: -wrap
- id: global
  doc: Perform a global alignment (experimental)
  type: boolean
  inputBinding:
    prefix: -global
- id: query
  doc: Align the full query sequence (mix of local/global)
  type: boolean
  inputBinding:
    prefix: -query
- id: summary
  doc: Write a summary files of match locations (tab-delimited)
  type: string
  inputBinding:
    prefix: -summary
- id: use_region
  doc: Use regions for coordinates if included in FASTA ref
  type: boolean
  inputBinding:
    prefix: -useregion
outputs: []
cwlVersion: v1.1
baseCommand:
- swalign
