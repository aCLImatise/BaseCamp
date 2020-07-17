class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dr_disco_bam_extract.cwl
inputs:
- id: region_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: region_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam_input_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- bam-extract
