class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samtools_flagstat.cwl
inputs:
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- flagstat
