class: CommandLineTool
id: picopore_rename.cwl
inputs:
- id: input
  doc: list of directories or fast5 files to shrink
  type: string
  inputBinding:
    position: 0
- id: pattern
  doc: String or regex to replace
  type: string
  inputBinding:
    prefix: --pattern
- id: replacement
  doc: String or regex replacement for PATTERN
  type: string
  inputBinding:
    prefix: --replacement
- id: y
  doc: skip confirm step
  type: boolean
  inputBinding:
    prefix: -y
- id: threads
  doc: 'number of threads (Default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: prefix
  doc: add prefix to output files to prevent overwrite
  type: string
  inputBinding:
    prefix: --prefix
- id: no_skip_root
  doc: 'ignore files in root input directories for albacore realtime compression (Default:
    --no-skip-root)'
  type: boolean
  inputBinding:
    prefix: --no-skip-root
- id: print_every
  doc: 'print a dot every approximately INT files, or -1 to silence (Default: 100)'
  type: long
  inputBinding:
    prefix: --print-every
outputs: []
cwlVersion: v1.1
baseCommand:
- picopore-rename
