class: CommandLineTool
id: ../../../sierrapy.cwl
inputs:
- id: in_url
  doc: URL of Sierra GraphQL Web Service.
  type: string
  inputBinding:
    prefix: --url
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sierrapy
