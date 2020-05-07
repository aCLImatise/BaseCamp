class: CommandLineTool
id: ParseAligns.cwl
inputs:
- id: min_align
  doc: minimum alignment length
  type: string
  inputBinding:
    prefix: --min-align
- id: dist
  doc: write distance estimates to this file
  type: string
  inputBinding:
    prefix: --dist
- id: frag
  doc: write fragment sizes to this file
  type: string
  inputBinding:
    prefix: --frag
- id: hist
  doc: write the fragment size histogram to FILE
  type: File
  inputBinding:
    prefix: --hist
- id: sam
  doc: alignments are in SAM format
  type: boolean
  inputBinding:
    prefix: --sam
- id: k_aligner
  doc: alignments are in KAligner format
  type: boolean
  inputBinding:
    prefix: --kaligner
- id: cover
  doc: coverage cut-off for distance estimates
  type: string
  inputBinding:
    prefix: --cover
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ParseAligns
