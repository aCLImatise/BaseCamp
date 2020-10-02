class: CommandLineTool
id: stringmeup_classifications.cwl
inputs:
- id: in_confidence_recal
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stringmeup
- classifications
