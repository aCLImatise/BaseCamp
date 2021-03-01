class: CommandLineTool
id: amptk_meta.cwl
inputs:
- id: in_input
  doc: Input OTU table
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_meta
  doc: Meta data table (csv format)
  type: boolean?
  inputBinding:
    prefix: --meta
- id: in_out
  doc: Output (meta data + pivotted OTU table)
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_split_taxonomy
  doc: Make separate tables for groups of taxonomy [k,p,c,o,f,g]
  type: boolean?
  inputBinding:
    prefix: --split_taxonomy
- id: in_arguments
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
- amptk
- meta
