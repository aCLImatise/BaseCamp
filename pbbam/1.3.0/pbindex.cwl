class: CommandLineTool
id: ../../../pbindex.cwl
inputs:
- id: in_dot_bam
  doc: FILE  Input BAM file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pbindex
