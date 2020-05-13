class: CommandLineTool
id: validate_locus.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Path to input locus file
  type: File
  inputBinding:
    prefix: --input
- id: input_directory
  doc: Path to directory containing locus files
  type: Directory
  inputBinding:
    prefix: --input-directory
outputs: []
cwlVersion: v1.1
baseCommand:
- validate_locus
