class: CommandLineTool
id: ../../../parasol.cwl
inputs:
- id: host
  doc: '- connect to a paraHub process on a remote host instead localhost.'
  type: string
  inputBinding:
    prefix: -host
outputs: []
cwlVersion: v1.1
baseCommand:
- parasol
