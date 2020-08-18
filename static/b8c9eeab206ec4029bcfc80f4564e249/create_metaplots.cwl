class: CommandLineTool
id: ../../../create_metaplots.bash.cwl
inputs:
- id: ribo_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- create_metaplots.bash
