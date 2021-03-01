class: CommandLineTool
id: complete_locus.cwl
inputs:
- id: in_input
  doc: Path to input locus file
  type: File?
  inputBinding:
    prefix: --input
- id: in_input_directory
  doc: Path to directory containing locus files
  type: Directory?
  inputBinding:
    prefix: --input-directory
- id: in_output_directory
  doc: Path to output directory
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_suppress_warnings
  doc: Suppress warnings
  type: boolean?
  inputBinding:
    prefix: --suppress-warnings
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Path to output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- complete_locus
