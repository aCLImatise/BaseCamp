class: CommandLineTool
id: ../../../sixgill_makefasta_metapeptidedbfile.cwl
inputs:
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: type
  doc: ''
  type: string
  inputBinding:
    prefix: --type
- id: six_gill_make_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sixgill_makefasta
- metapeptidedbfile
