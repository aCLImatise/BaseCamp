class: CommandLineTool
id: cargo_test.cwl
inputs:
- id: in_lib
  doc: Test only this package's library
  type: boolean
  inputBinding:
    prefix: --lib
- id: in_doc
  doc: Test only this library's documentation
  type: boolean
  inputBinding:
    prefix: --doc
- id: in_bin
  doc: Test only the specified binary
  type: string
  inputBinding:
    prefix: --bin
- id: in_example
  doc: Test only the specified example
  type: string
  inputBinding:
    prefix: --example
- id: in_test
  doc: Test only the specified integration test target
  type: string
  inputBinding:
    prefix: --test
- id: in_bench
  doc: Test only the specified benchmark target
  type: string
  inputBinding:
    prefix: --bench
- id: in_no_run
  doc: Compile, but don't run tests
  type: boolean
  inputBinding:
    prefix: --no-run
- id: in_package
  doc: to run tests for
  type: string
  inputBinding:
    prefix: --package
- id: in_jobs
  doc: 'Number of parallel jobs, defaults to # of CPUs'
  type: long
  inputBinding:
    prefix: --jobs
- id: in_release
  doc: Build artifacts in release mode, with optimizations
  type: boolean
  inputBinding:
    prefix: --release
- id: in_features
  doc: Space-separated list of features to also build
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
- id: in_target
  doc: Build for the target triple
  type: string
  inputBinding:
    prefix: --target
- id: in_manifest_path
  doc: Path to the manifest to build tests for
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
- id: in_message_format
  doc: 'Error format: human, json [default: human]'
  type: string
  inputBinding:
    prefix: --message-format
- id: in_no_fail_fast
  doc: Run all tests regardless of failure
  type: boolean
  inputBinding:
    prefix: --no-fail-fast
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
- test
