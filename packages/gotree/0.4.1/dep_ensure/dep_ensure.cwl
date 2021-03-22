class: CommandLineTool
id: dep_ensure.cwl
inputs:
- id: in_add
  doc: 'add new dependencies, or populate Gopkg.toml with constraints for existing
    dependencies (default: false)'
  type: boolean?
  inputBinding:
    prefix: -add
- id: in_dry_run
  doc: 'only report the changes that would be made (default: false)'
  type: boolean?
  inputBinding:
    prefix: -dry-run
- id: in_examples
  doc: 'print detailed usage examples (default: false)'
  type: boolean?
  inputBinding:
    prefix: -examples
- id: in_no_vendor
  doc: 'update Gopkg.lock (if needed), but do not update vendor/ (default: false)'
  type: boolean?
  inputBinding:
    prefix: -no-vendor
- id: in_update
  doc: 'update the named dependencies (or all, if none are named) in Gopkg.lock to
    the latest allowed by Gopkg.toml (default: false)'
  type: boolean?
  inputBinding:
    prefix: -update
- id: in_enable_verbose_default
  doc: 'enable verbose logging (default: false)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_vendor_only
  doc: 'populate vendor/ from Gopkg.lock without updating it first (default: false)'
  type: boolean?
  inputBinding:
    prefix: -vendor-only
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
- ensure
