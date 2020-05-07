class: CommandLineTool
id: primerclip.cwl
inputs:
- id: bed_pe
  doc: add this switch to use BEDPE coordinate input format (default format is master
    file)
  type: boolean
  inputBinding:
    prefix: --bedpe
- id: single_end
  doc: add this switch to trim primers from single-end alignments
  type: boolean
  inputBinding:
    prefix: --single-end
outputs: []
cwlVersion: v1.1
baseCommand:
- primerclip
