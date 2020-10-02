class: CommandLineTool
id: cargo_init.cwl
inputs:
- id: in_vcs
  doc: "Initialize a new repository for the given version\ncontrol system (git or\
    \ hg) or do not initialize any version\ncontrol at all (none) overriding a global\
    \ configuration."
  type: string
  inputBinding:
    prefix: --vcs
- id: in_bin
  doc: Use a binary (application) template
  type: boolean
  inputBinding:
    prefix: --bin
- id: in_lib
  doc: Use a library template
  type: boolean
  inputBinding:
    prefix: --lib
- id: in_name
  doc: Set the resulting package name
  type: string
  inputBinding:
    prefix: --name
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
- init
