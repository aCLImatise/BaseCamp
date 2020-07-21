class: CommandLineTool
id: ../../../pslSelect.cwl
inputs:
- id: qt_start
  doc: '- file is tab-separate rows of qName,tName,tStart'
  type: File
  inputBinding:
    prefix: -qtStart
- id: q_delim
  doc: '- use only the part of the query name before this character'
  type: string
  inputBinding:
    prefix: -qDelim
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslSelect
