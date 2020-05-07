class: CommandLineTool
id: mmseqs_swapdb.cwl
inputs:
- id: split_memory_limit
  doc: 0               Maximum system memory in megabyte that one split may use. Defaults
    (0) to all available system memory.
  type: boolean
  inputBinding:
    prefix: --split-memory-limit
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- swapdb
