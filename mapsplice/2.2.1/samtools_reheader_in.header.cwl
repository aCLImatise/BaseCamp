class: CommandLineTool
id: samtools_reheader_in.header.sam.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- reheader
- in.header.sam
