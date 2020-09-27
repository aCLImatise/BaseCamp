class: CommandLineTool
id: mockinbird_flip_mate_output_bam.cwl
inputs:
- id: in_mock_in_bird
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_flip_mate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mockinbird
- flip_mate
- output_bam
