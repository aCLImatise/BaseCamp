class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/draw_circos_images.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- draw_circos_images.sh
