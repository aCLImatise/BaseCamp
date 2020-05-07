class: CommandLineTool
id: rsem_preref.cwl
inputs:
- id: l
  doc: ': polyALen: specify the length of polyA tail you want to pad. Default is 100'
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: ': exceptionF: file contains a list of exception reference ids. IDs starts
    from 1. Must set if polyAChoice = 2'
  type: boolean
  inputBinding:
    prefix: -f
- id: q
  doc: ': quiet'
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-preref
