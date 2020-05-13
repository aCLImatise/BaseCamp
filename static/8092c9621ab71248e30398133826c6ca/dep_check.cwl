class: CommandLineTool
id: dep_check.cwl
inputs:
- id: q
  doc: 'Suppress non-error output (default: false)'
  type: boolean
  inputBinding:
    prefix: -q
- id: skip_lock
  doc: 'Skip checking that imports and Gopkg.toml are in sync with Gopkg.lock (default:
    false)'
  type: boolean
  inputBinding:
    prefix: -skip-lock
- id: skip_vendor
  doc: 'Skip checking that vendor is in sync with Gopkg.lock (default: false)'
  type: boolean
  inputBinding:
    prefix: -skip-vendor
outputs: []
cwlVersion: v1.1
baseCommand:
- dep
- check
