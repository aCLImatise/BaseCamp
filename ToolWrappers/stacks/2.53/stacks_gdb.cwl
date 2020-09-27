class: CommandLineTool
id: stacks_gdb.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stacks-gdb
