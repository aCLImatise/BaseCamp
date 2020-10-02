class: CommandLineTool
id: qorts.cwl
inputs:
- id: in_formatting_dot
  doc: 'NOTE: if you run into OutOfMemoryExceptions, '
  type: string
  inputBinding:
    position: 0
- id: in_identifiers_dot
  doc: 'For more info, use:'
  type: string
  inputBinding:
    position: 0
- id: in_orphan_dot
  doc: 'For more info, use:'
  type: string
  inputBinding:
    position: 0
- id: in_merchantability
  doc: or fitness for any particular purpose.
  type: string
  inputBinding:
    position: 0
- id: in_citation_dot
  doc: 'NOTE: This package includes (internally) the sam-1.113.jar '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qorts
