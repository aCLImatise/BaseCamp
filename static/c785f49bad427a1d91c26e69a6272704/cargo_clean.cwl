class: CommandLineTool
id: cargo_clean.cwl
inputs:
- id: in_package
  doc: to clean artifacts for
  type: string?
  inputBinding:
    prefix: --package
- id: in_manifest_path
  doc: Path to the manifest to the package to clean
  type: File?
  inputBinding:
    prefix: --manifest-path
- id: in_target
  doc: Target triple to clean output for (default all)
  type: string?
  inputBinding:
    prefix: --target
- id: in_release
  doc: Whether or not to clean release artifacts
  type: boolean?
  inputBinding:
    prefix: --release
- id: in_verbose
  doc: '...            Use verbose output'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: No output printed to stdout
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_color
  doc: 'Coloring: auto, always, never'
  type: string?
  inputBinding:
    prefix: --color
- id: in_frozen
  doc: Require Cargo.lock and cache are up to date
  type: boolean?
  inputBinding:
    prefix: --frozen
- id: in_locked
  doc: Require Cargo.lock is up to date
  type: boolean?
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
hints: []
cwlVersion: v1.1
baseCommand:
- cargo
- clean
