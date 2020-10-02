class: CommandLineTool
id: tb_profiler_version.cwl
inputs:
- id: in_tb_profiler
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tb-profiler
- version
