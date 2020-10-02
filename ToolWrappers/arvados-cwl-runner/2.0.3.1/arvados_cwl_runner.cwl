class: CommandLineTool
id: arvados_cwl_runner.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arvados-cwl-runner
