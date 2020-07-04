class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mockinbird_flip_mate_output_bam.cwl
inputs:
- id: mock_in_bird
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: flip_mate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- mockinbird
- flip_mate
- output_bam
