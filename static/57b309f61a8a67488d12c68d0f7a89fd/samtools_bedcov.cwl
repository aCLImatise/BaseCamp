class: CommandLineTool
id: ../../../samtools_bedcov.cwl
inputs:
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- bedcov
