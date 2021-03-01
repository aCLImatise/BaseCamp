class: CommandLineTool
id: merge_flags.py.cwl
inputs:
- id: in_input
  doc: "Input any number of flag files that have the same\nindexes"
  type: string[]
  inputBinding:
    prefix: --input
- id: in_filename
  doc: Filename for input data.
  type: File[]
  inputBinding:
    prefix: --filename
- id: in_flag_uniqid
  doc: "Name of the column with unique identifiers in the flag\nfiles."
  type: string?
  inputBinding:
    prefix: --flagUniqID
- id: in_output
  doc: "Output file\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- merge_flags.py
