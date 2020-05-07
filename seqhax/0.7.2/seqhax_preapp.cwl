class: CommandLineTool
id: seqhax_preapp.cwl
inputs:
- id: seq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: p
  doc: Add SEQ as prefix, adding quality charachters if fastq.
  type: string
  inputBinding:
    prefix: -P
- id: s
  doc: Add SEQ as suffix, adding quality charachters if fastq.
  type: string
  inputBinding:
    prefix: -S
- id: p
  doc: 'Paired mode: reads are kept/discared in pairs'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- preapp
