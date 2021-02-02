class: CommandLineTool
id: ../../../deepac_strain.cwl
inputs:
- id: in_no_eager
  doc: Disable eager mode.
  type: boolean
  inputBinding:
    prefix: --no-eager
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepac-strain
