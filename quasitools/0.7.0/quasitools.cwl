class: CommandLineTool
id: ../../../quasitools.cwl
inputs:
- id: in_verbose
  doc: Enables verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- quasitools
