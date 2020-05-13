class: CommandLineTool
id: summarize_stats.cwl
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
- id: prefix
  doc: prefix of temporary statistics files
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize_stats
