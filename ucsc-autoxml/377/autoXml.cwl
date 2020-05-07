class: CommandLineTool
id: autoXml.cwl
inputs:
- id: filed_tdx
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: root
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: text_field
  doc: what to name text between start/end tags. Default 'text'
  type: string
  inputBinding:
    prefix: -textField
- id: comment
  doc: Comment to appear at top of generated code files
  type: string
  inputBinding:
    prefix: -comment
- id: picky
  doc: Generate parser that rejects stuff it doesn't understand
  type: boolean
  inputBinding:
    prefix: -picky
- id: main
  doc: Put in a main routine that's a test harness
  type: boolean
  inputBinding:
    prefix: -main
- id: prefix
  doc: Prefix to add to structure names. By default same as root
  type: string
  inputBinding:
    prefix: -prefix
- id: positive
  doc: "'t write out optional attributes with negative values"
  type: string
  inputBinding:
    prefix: -positive
outputs: []
cwlVersion: v1.1
baseCommand:
- autoXml
