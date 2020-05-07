class: CommandLineTool
id: NBICseq_norm.pl_output.cwl
inputs:
- id: config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- NBICseq-norm.pl
- output
