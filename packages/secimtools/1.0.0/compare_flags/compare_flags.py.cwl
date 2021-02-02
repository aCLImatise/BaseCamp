class: CommandLineTool
id: compare_flags.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output file (Cross tab format).
  type: File
  inputBinding:
    prefix: --output
- id: in_flag_one
  doc: Flag 1 to create cross tab
  type: long
  inputBinding:
    prefix: --flag1
- id: in_flag_two
  doc: "Flag 2 to create cross tab\n"
  type: long
  inputBinding:
    prefix: --flag2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (Cross tab format).
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- compare_flags.py
