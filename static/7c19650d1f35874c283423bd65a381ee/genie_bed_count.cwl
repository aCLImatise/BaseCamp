class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genie_bed_count.cwl
inputs:
- id: file_path
  doc: A bam file (*require)
  type: string
  inputBinding:
    prefix: --filepath
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- bed
- count
