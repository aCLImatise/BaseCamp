class: CommandLineTool
id: pindel.cwl
inputs:
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_confidence_range_b
  doc: 'Example: DEL chr1 10000 50 chr2 20000 100 '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pindel
