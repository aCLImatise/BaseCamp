class: CommandLineTool
id: cargo_doc.cwl
inputs:
- id: in_open
  doc: Opens the docs in a browser after the operation
  type: boolean?
  inputBinding:
    prefix: --open
- id: in_package
  doc: to document
  type: string?
  inputBinding:
    prefix: --package
- id: in_no_deps
  doc: Don't build documentation for dependencies
  type: boolean?
  inputBinding:
    prefix: --no-deps
- id: in_jobs
  doc: 'Number of parallel jobs, defaults to # of CPUs'
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_lib
  doc: Document only this package's library
  type: boolean?
  inputBinding:
    prefix: --lib
- id: in_bin
  doc: Document only the specified binary
  type: string?
  inputBinding:
    prefix: --bin
- id: in_release
  doc: Build artifacts in release mode, with optimizations
  type: boolean?
  inputBinding:
    prefix: --release
- id: in_features
  doc: Space-separated list of features to also build
  type: string?
  inputBinding:
    prefix: --features
- id: in_all_features
  doc: Build all available features
  type: boolean?
  inputBinding:
    prefix: --all-features
- id: in_no_default_features
  doc: Do not build the `default` feature
  type: boolean?
  inputBinding:
    prefix: --no-default-features
- id: in_target
  doc: Build for the target triple
  type: string?
  inputBinding:
    prefix: --target
- id: in_manifest_path
  doc: Path to the manifest to document
  type: File?
  inputBinding:
    prefix: --manifest-path
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
- id: in_message_format
  doc: 'Error format: human, json [default: human]'
  type: string?
  inputBinding:
    prefix: --message-format
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
- doc
