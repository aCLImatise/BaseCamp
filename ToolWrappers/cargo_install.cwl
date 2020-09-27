class: CommandLineTool
id: cargo_install.cwl
inputs:
- id: in_vers
  doc: Specify a version to install from crates.io
  type: string
  inputBinding:
    prefix: --vers
- id: in_git
  doc: Git URL to install the specified crate from
  type: string
  inputBinding:
    prefix: --git
- id: in_branch
  doc: Branch to use when installing from git
  type: string
  inputBinding:
    prefix: --branch
- id: in_tag
  doc: Tag to use when installing from git
  type: string
  inputBinding:
    prefix: --tag
- id: in_rev
  doc: Specific commit to use when installing from git
  type: string
  inputBinding:
    prefix: --rev
- id: in_path
  doc: Filesystem path to local crate to install
  type: File
  inputBinding:
    prefix: --path
- id: in_jobs
  doc: 'Number of parallel jobs, defaults to # of CPUs'
  type: long
  inputBinding:
    prefix: --jobs
- id: in_force
  doc: Force overwriting existing crates or binaries
  type: boolean
  inputBinding:
    prefix: --force
- id: in_features
  doc: Space-separated list of features to activate
  type: string
  inputBinding:
    prefix: --features
- id: in_all_features
  doc: Build all available features
  type: boolean
  inputBinding:
    prefix: --all-features
- id: in_no_default_features
  doc: Do not build the `default` feature
  type: boolean
  inputBinding:
    prefix: --no-default-features
- id: in_debug
  doc: Build in debug mode instead of release mode
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_bin
  doc: Only install the binary NAME
  type: string
  inputBinding:
    prefix: --bin
- id: in_example
  doc: Install the example EXAMPLE instead of binaries
  type: string
  inputBinding:
    prefix: --example
- id: in_root
  doc: Directory to install packages into
  type: Directory
  inputBinding:
    prefix: --root
- id: in_verbose
  doc: '...         Use verbose output'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Less output printed to stdout
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
- install
