class: CommandLineTool
id: picopore_rename.cwl
inputs:
- id: in_pattern
  doc: String or regex to replace
  type: string
  inputBinding:
    prefix: --pattern
- id: in_replacement
  doc: String or regex replacement for PATTERN
  type: string
  inputBinding:
    prefix: --replacement
- id: in_skip_confirm_step
  doc: skip confirm step
  type: boolean
  inputBinding:
    prefix: -y
- id: in_threads
  doc: 'number of threads (Default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_prefix
  doc: add prefix to output files to prevent overwrite
  type: string
  inputBinding:
    prefix: --prefix
- id: in_no_skip_root
  doc: "ignore files in root input directories for albacore\nrealtime compression\
    \ (Default: --no-skip-root)"
  type: boolean
  inputBinding:
    prefix: --no-skip-root
- id: in_print_every
  doc: "print a dot every approximately INT files, or -1 to\nsilence (Default: 100)\n"
  type: long
  inputBinding:
    prefix: --print-every
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_input
  doc: list of directories or fast5 files to shrink
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- picopore-rename
