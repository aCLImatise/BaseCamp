class: CommandLineTool
id: LTR_retriever.cwl
inputs:
- id: genome
  doc: ''
  type: string
  inputBinding:
    prefix: -genome
- id: in_harvest
  doc: ''
  type: string
  inputBinding:
    prefix: -inharvest
outputs: []
cwlVersion: v1.1
baseCommand:
- LTR_retriever
