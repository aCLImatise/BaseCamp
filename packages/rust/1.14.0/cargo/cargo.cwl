class: CommandLineTool
id: ../../../cargo.cwl
inputs:
- id: in_list
  doc: List installed commands
  type: boolean
  inputBinding:
    prefix: --list
- id: in_explain
  doc: Run `rustc --explain CODE`
  type: string
  inputBinding:
    prefix: --explain
- id: in_verbose
  doc: '...   Use verbose output'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: No output printed to stdout
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_color
  doc: 'Coloring: auto, always, never'
  type: string
  inputBinding:
    prefix: --color
- id: in_frozen
  doc: Require Cargo.lock and cache are up to date
  type: boolean
  inputBinding:
    prefix: --frozen
- id: in_locked
  doc: Require Cargo.lock is up to date
  type: boolean
  inputBinding:
    prefix: --locked
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cargo
