class: CommandLineTool
id: ../../../planemo_travis_init.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- travis_init
