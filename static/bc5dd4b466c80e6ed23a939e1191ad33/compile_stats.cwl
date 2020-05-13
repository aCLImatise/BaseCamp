class: CommandLineTool
id: compile_stats.cwl
inputs:
- id: verbose
  doc: print additional information to STDERR
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debug messages to STDERR
  type: boolean
  inputBinding:
    prefix: --debug
- id: remove
  doc: remove temporary statistics files after use
  type: boolean
  inputBinding:
    prefix: --remove
- id: prefix
  doc: prefix of temporary statistics files
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- compile_stats
