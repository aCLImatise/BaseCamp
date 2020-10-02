class: CommandLineTool
id: merfishtools_gen_mhd2.cwl
inputs:
- id: in_bits
  doc: Number of bits.
  type: long
  inputBinding:
    prefix: --bits
- id: in_one_bits
  doc: Number of 1-bits.
  type: long
  inputBinding:
    prefix: --onebits
- id: in_not_expressed
  doc: "Regular expression pattern for features that should be marked\nas not expressed.\
    \ This is useful to correctly model, e.g.,\nmisidentification probes."
  type: string
  inputBinding:
    prefix: --not-expressed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merfishtools
- gen-mhd2
