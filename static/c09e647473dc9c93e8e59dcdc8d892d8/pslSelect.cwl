class: CommandLineTool
id: pslSelect.cwl
inputs:
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
- id: qt_start
  doc: tab-separate rows of qName,tName,tStart
  type: File
  inputBinding:
    prefix: -qtStart
- id: q_delim
  doc: the part of the query name before this character
  type: string
  inputBinding:
    prefix: -qDelim
outputs: []
cwlVersion: v1.1
baseCommand:
- pslSelect
