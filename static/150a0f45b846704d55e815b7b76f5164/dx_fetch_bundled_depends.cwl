class: CommandLineTool
id: dx_fetch_bundled_depends.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx-fetch-bundled-depends
