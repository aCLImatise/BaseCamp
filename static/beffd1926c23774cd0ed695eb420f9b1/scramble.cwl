class: CommandLineTool
id: ../../../scramble.cwl
inputs:
- id: convert_using_filegzi
  doc: Convert to Bam using index (file.gzi)
  type: File
  inputBinding:
    prefix: -g
- id: output_bam_index
  doc: Output Bam index when bam input(file.gzi)
  type: File
  inputBinding:
    prefix: -G
- id: mode_fast_normal
  doc: '[Cram] Mode is fast, normal, small or archive.'
  type: string
  inputBinding:
    prefix: -X
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
outputs: []
cwlVersion: v1.1
baseCommand:
- scramble
