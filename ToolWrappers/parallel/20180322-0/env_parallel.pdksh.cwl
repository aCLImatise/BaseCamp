class: CommandLineTool
id: env_parallel.pdksh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- env_parallel.pdksh
