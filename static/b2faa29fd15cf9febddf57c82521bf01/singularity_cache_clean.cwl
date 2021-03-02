class: CommandLineTool
id: singularity_cache_clean.cwl
inputs:
- id: in_name
  doc: "specify a container cache to clean (will clear all\ncache with the same name)"
  type: string?
  inputBinding:
    prefix: --name
- id: in_dry_run
  doc: "operate in dry run mode and do not actually clean\nthe cache"
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_force
  doc: suppress any prompts and clean the cache
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_type
  doc: "a list of cache types to clean (possible values:\nlibrary, oci, shub, blob,\
    \ net, oras, all) (default\n[all])"
  type: string?
  inputBinding:
    prefix: --type
- id: in_clean
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singularity
- cache
- clean
