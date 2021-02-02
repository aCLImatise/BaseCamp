class: CommandLineTool
id: prophet.cwl
inputs:
- id: in_gap_open
  doc: "float      [1.0] Gap opening coefficient (Number from\n0.000 to 100.000)"
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: in_gap_extend
  doc: "float      [1.0] Gap extension coefficient (Number from\n0.000 to 100.000)"
  type: boolean
  inputBinding:
    prefix: -gapextend
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prophet
