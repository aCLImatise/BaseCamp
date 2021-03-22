class: CommandLineTool
id: dep_check.cwl
inputs:
- id: in_suppress_nonerror_output
  doc: 'Suppress non-error output (default: false)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_skip_lock
  doc: 'Skip checking that imports and Gopkg.toml are in sync with Gopkg.lock (default:
    false)'
  type: boolean?
  inputBinding:
    prefix: -skip-lock
- id: in_skip_vendor
  doc: 'Skip checking that vendor is in sync with Gopkg.lock (default: false)'
  type: boolean?
  inputBinding:
    prefix: -skip-vendor
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- dep
- check
