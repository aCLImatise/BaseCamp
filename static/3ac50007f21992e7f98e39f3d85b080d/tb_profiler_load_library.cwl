class: CommandLineTool
id: tb_profiler_load_library.cwl
inputs:
- id: in_prefix
  doc: Prefix to the library files
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
- load_library
