class: CommandLineTool
id: env_parallel.fish.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- env_parallel.fish
