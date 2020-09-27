class: CommandLineTool
id: cargo_update.cwl
inputs:
- id: in_package
  doc: to update
  type: string
  inputBinding:
    prefix: --package
- id: in_aggressive
  doc: Force updating all dependencies of <name> as well
  type: boolean
  inputBinding:
    prefix: --aggressive
- id: in_precise
  doc: Update a single dependency to exactly PRECISE
  type: string
  inputBinding:
    prefix: --precise
- id: in_manifest_path
  doc: Path to the crate's manifest
  type: File
  inputBinding:
    prefix: --manifest-path
- id: in_verbose
  doc: '...            Use verbose output'
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
- id: in_cargo
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
- cargo
- update
