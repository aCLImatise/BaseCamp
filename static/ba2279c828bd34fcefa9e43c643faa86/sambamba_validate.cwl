class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sambamba_validate.cwl
inputs:
- id: input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- validate
