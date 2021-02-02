class: CommandLineTool
id: sixgill_merge_metapeptidedbfiles.cwl
inputs:
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_no_gzip_out
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nogzipout
- id: in_out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: in_six_gill_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sixgill_merge
- metapeptidedbfiles
