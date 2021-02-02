class: CommandLineTool
id: wdl2dot.cwl
inputs:
- id: in_input_file
  doc: Input wdl file
  type: File
  inputBinding:
    prefix: --input_file
- id: in_output_file
  doc: "Output dot file\n"
  type: File
  inputBinding:
    prefix: --output_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Output dot file\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- wdl2dot
