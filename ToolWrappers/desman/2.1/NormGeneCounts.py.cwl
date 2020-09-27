class: CommandLineTool
id: NormGeneCounts.py.cwl
inputs:
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    prefix: --output_file
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- NormGeneCounts.py
