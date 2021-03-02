class: CommandLineTool
id: merfishtools_gen_mhd4.cwl
inputs:
- id: in_one_bits
  doc: Number of 1-bits.
  type: long?
  inputBinding:
    prefix: --onebits
- id: in_not_expressed
  doc: "Regular expression pattern for features that should be marked\nas not expressed.\
    \ This is useful to correctly model, e.g.,\nmisidentification probes."
  type: string?
  inputBinding:
    prefix: --not-expressed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- gen-mhd4
