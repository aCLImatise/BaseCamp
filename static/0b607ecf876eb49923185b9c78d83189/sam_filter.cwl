class: CommandLineTool
id: sam_filter.py.cwl
inputs:
- id: input_file
  doc: The input sam file.
  type: string
  inputBinding:
    prefix: --input_file
- id: min_align_score
  doc: The sam records with alignment score smaller than this value will be discarded.
  type: long
  inputBinding:
    prefix: --min_align_score
- id: verbose
  doc: Show all information. Default "not set".
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- sam_filter.py
