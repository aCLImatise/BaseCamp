class: CommandLineTool
id: ../../../seqmagick_primer_trim_reverse_primer.cwl
inputs:
- id: reverse_is_rev_comp
  doc: ''
  type: boolean
  inputBinding:
    prefix: --reverse-is-revcomp
- id: seq_magick
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: primer_trim
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmagick
- primer-trim
- reverse_primer
