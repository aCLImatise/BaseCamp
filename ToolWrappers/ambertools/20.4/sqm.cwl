class: CommandLineTool
id: sqm.cwl
inputs:
- id: in_overwrite_output_file
  doc: Overwrite output file if it exists
  type: File
  inputBinding:
    prefix: -O
- id: in_input_file
  doc: Input file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_file
  doc: Output file
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_overwrite_output_file
  doc: Overwrite output file if it exists
  type: File
  outputBinding:
    glob: $(inputs.in_overwrite_output_file)
- id: out_output_file
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- sqm
