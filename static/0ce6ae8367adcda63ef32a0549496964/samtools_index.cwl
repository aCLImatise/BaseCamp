class: CommandLineTool
id: samtools_index.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_index
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- index
