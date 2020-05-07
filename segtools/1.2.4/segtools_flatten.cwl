class: CommandLineTool
id: segtools_flatten.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: segmentation
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: mnemonic_file
  doc: Save mapping information to FILE instead of flat.mnemonics (default). This
    file complies with the mnemonic file format.
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: outfile
  doc: Save flattened bed file to FILE instead of printing to stdout (default)
  type: File
  inputBinding:
    prefix: --outfile
- id: filter
  doc: Don't output new segment labels (and corresponding segments) that span less
    than F*N bases, where N is the number of bases covered by the new segmentation.
    This can be used to remove extremely uncommon labels (e.g. F = 0.01) that are
    the more likely to be spurious. Filtering is off by default.
  type: string
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- segtools-flatten
