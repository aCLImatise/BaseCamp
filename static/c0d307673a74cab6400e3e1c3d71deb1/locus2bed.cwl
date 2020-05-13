class: CommandLineTool
id: locus2bed.cwl
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
- id: prefix
  doc: Prefix to region names
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- locus2bed
