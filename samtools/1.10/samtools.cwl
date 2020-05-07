class: CommandLineTool
id: samtools.pl_showALEN.cwl
inputs:
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools.pl
- showALEN
