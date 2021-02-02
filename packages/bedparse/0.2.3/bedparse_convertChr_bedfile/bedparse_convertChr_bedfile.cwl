class: CommandLineTool
id: bedparse_convertChr_bedfile.cwl
inputs:
- id: in_target
  doc: ''
  type: string
  inputBinding:
    prefix: --target
- id: in_assembly
  doc: ''
  type: string
  inputBinding:
    prefix: --assembly
- id: in_bed_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_convert_chr
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
- bedparse
- convertChr
- bedfile
