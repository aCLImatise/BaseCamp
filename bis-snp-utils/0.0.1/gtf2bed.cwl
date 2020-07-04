class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gtf2bed.pl.cwl
inputs:
- id: input_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: upstream_extension
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: downstream_extension
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gtf2bed.pl
