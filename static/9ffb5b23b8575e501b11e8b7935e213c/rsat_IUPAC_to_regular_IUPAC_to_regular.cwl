class: CommandLineTool
id: rsat_IUPAC_to_regular_IUPAC_to_regular.cwl
inputs:
- id: in_age
  doc: '[cg]age'
  type: boolean?
  inputBinding:
    prefix: --u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- IUPAC-to-regular
- IUPAC-to-regular
