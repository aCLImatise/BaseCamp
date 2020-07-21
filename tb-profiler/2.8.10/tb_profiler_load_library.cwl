class: CommandLineTool
id: ../../../tb_profiler_load_library.cwl
inputs:
- id: prefix
  doc: Prefix to the library files
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- load_library
