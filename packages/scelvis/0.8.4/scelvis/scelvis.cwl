class: CommandLineTool
id: ../../../scelvis.cwl
inputs:
- id: in_verbose
  doc: Increase verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scelvis
