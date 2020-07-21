class: CommandLineTool
id: ../../../tb_profiler_version.cwl
inputs:
- id: tb_profiler
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- version
