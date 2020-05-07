class: CommandLineTool
id: samtools_reheader_in.bam.cwl
inputs:
- id: in_headers_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- reheader
- in.bam
