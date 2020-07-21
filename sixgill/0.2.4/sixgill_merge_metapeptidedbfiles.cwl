class: CommandLineTool
id: ../../../sixgill_merge_metapeptidedbfiles.cwl
inputs:
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: no_gzip_out
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nogzipout
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: six_gill_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sixgill_merge
- metapeptidedbfiles
