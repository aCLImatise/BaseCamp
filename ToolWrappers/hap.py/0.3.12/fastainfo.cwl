class: CommandLineTool
id: fastainfo.cwl
inputs:
- id: in_input_file
  doc: The input files
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_file
  doc: The output file name.
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: The output file name.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- fastainfo
