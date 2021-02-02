class: CommandLineTool
id: ../../../prosolo.cwl
inputs:
- id: in_provide_verbose_output
  doc: Provide verbose output.
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prosolo
