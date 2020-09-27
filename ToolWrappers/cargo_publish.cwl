class: CommandLineTool
id: cargo_publish.cwl
inputs:
- id: in_host
  doc: Host to upload the package to
  type: string
  inputBinding:
    prefix: --host
- id: in_token
  doc: Token to use when uploading
  type: string
  inputBinding:
    prefix: --token
- id: in_no_verify
  doc: Don't verify package tarball before publish
  type: boolean
  inputBinding:
    prefix: --no-verify
- id: in_allow_dirty
  doc: Allow publishing with a dirty source directory
  type: boolean
  inputBinding:
    prefix: --allow-dirty
- id: in_manifest_path
  doc: Path to the manifest of the package to publish
  type: File
  inputBinding:
    prefix: --manifest-path
- id: in_jobs
  doc: 'Number of parallel jobs, defaults to # of CPUs'
  type: long
  inputBinding:
    prefix: --jobs
- id: in_dry_run
  doc: Perform all checks without uploading
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_verbose
  doc: '...        Use verbose output'
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
- publish
