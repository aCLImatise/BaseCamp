class: CommandLineTool
id: complete_locus.cwl
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
- id: output_directory
  doc: Path to output directory
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: suppress_warnings
  doc: Suppress warnings
  type: boolean
  inputBinding:
    prefix: --suppress-warnings
outputs: []
cwlVersion: v1.1
baseCommand:
- complete_locus
