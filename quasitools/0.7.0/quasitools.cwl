class: CommandLineTool
id: quasitools.cwl
inputs:
- id: verbose
  doc: Enables verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
