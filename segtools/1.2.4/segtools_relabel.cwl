class: CommandLineTool
id: ../../../segtools_relabel.cwl
inputs:
- id: quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: outfile
  doc: Save relabeled bed file to FILE instead of printing to stdout (default)
  type: File
  inputBinding:
    prefix: --outfile
- id: segmentation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mnemonic_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- segtools-relabel
