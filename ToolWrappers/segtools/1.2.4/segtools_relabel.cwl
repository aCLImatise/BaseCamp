class: CommandLineTool
id: segtools_relabel.cwl
inputs:
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_outfile
  doc: "Save relabeled bed file to FILE instead of printing to\nstdout (default)\n"
  type: File
  inputBinding:
    prefix: --outfile
- id: in_segmentation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mnemonic_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- segtools-relabel
