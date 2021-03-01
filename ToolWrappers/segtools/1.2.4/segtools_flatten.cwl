class: CommandLineTool
id: segtools_flatten.cwl
inputs:
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_mnemonic_file
  doc: "Save mapping information to FILE instead of\nflat.mnemonics (default). This\
    \ file complies with the\nmnemonic file format."
  type: File?
  inputBinding:
    prefix: --mnemonic-file
- id: in_outfile
  doc: "Save flattened bed file to FILE instead of printing to\nstdout (default)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_filter
  doc: "Don't output new segment labels (and corresponding\nsegments) that span less\
    \ than F*N bases, where N is\nthe number of bases covered by the new segmentation.\n\
    This can be used to remove extremely uncommon labels\n(e.g. F = 0.01) that are\
    \ the more likely to be\nspurious. Filtering is off by default.\n"
  type: long?
  inputBinding:
    prefix: --filter
- id: in_segmentation_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- segtools-flatten
