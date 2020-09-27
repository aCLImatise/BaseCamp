class: CommandLineTool
id: validate_locus.cwl
inputs:
- id: in_input
  doc: Path to input locus file
  type: File
  inputBinding:
    prefix: --input
- id: in_input_directory
  doc: Path to directory containing locus files
  type: Directory
  inputBinding:
    prefix: --input-directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- validate_locus
