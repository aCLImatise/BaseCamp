class: CommandLineTool
id: strike.cwl
inputs:
- id: in_alignment
  doc: Alignment File
  type: File?
  inputBinding:
    prefix: --alignment
- id: in_template_file
  doc: Connection File
  type: File?
  inputBinding:
    prefix: --template_file
- id: in_normalize
  doc: Normalizes the score
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_out_file
  doc: The file where the results will be saved
  type: File?
  inputBinding:
    prefix: --out_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- strike
