class: CommandLineTool
id: ../../../mb_cap_occupancy.cwl
inputs:
- id: in_quantile
  doc: "quantile [0, 1.0]\n"
  type: double
  inputBinding:
    prefix: --quantile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-cap-occupancy
