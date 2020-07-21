class: CommandLineTool
id: ../../../expand_fastq.cwl
inputs:
- id: bccdehikllnnprsvzzzero
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bcCdEhikLlNnprsvzZ0
- id: apple
  doc: ''
  type: boolean
  inputBinding:
    prefix: --apple
- id: extension
  doc: ''
  type: boolean
  inputBinding:
    prefix: --extension
- id: mime_encoding
  doc: ''
  type: boolean
  inputBinding:
    prefix: --mime-encoding
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- expand_fastq
