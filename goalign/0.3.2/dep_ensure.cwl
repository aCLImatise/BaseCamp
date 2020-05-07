class: CommandLineTool
id: dep_ensure.cwl
inputs:
- id: add
  doc: 'add new dependencies, or populate Gopkg.toml with constraints for existing
    dependencies (default: false)'
  type: boolean
  inputBinding:
    prefix: -add
- id: dry_run
  doc: 'only report the changes that would be made (default: false)'
  type: boolean
  inputBinding:
    prefix: -dry-run
- id: examples
  doc: 'print detailed usage examples (default: false)'
  type: boolean
  inputBinding:
    prefix: -examples
- id: no_vendor
  doc: 'update Gopkg.lock (if needed), but do not update vendor/ (default: false)'
  type: boolean
  inputBinding:
    prefix: -no-vendor
- id: update
  doc: 'update the named dependencies (or all, if none are named) in Gopkg.lock to
    the latest allowed by Gopkg.toml (default: false)'
  type: boolean
  inputBinding:
    prefix: -update
- id: v
  doc: 'enable verbose logging (default: false)'
  type: boolean
  inputBinding:
    prefix: -v
- id: vendor_only
  doc: 'populate vendor/ from Gopkg.lock without updating it first (default: false)'
  type: boolean
  inputBinding:
    prefix: -vendor-only
outputs: []
cwlVersion: v1.1
baseCommand:
- dep
- ensure
