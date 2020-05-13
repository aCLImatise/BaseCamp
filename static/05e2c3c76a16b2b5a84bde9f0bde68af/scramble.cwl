class: CommandLineTool
id: scramble.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: g
  doc: Convert to Bam using index (file.gzi)
  type: File
  inputBinding:
    prefix: -g
- id: g
  doc: Output Bam index when bam input(file.gzi)
  type: File
  inputBinding:
    prefix: -G
- id: x
  doc: '[Cram] Mode is fast, normal, small or archive.'
  type: string
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- scramble
