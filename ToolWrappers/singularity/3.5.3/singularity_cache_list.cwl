class: CommandLineTool
id: singularity_cache_list.cwl
inputs:
- id: in_type
  doc: "a list of cache types to display, possible entries:\nlibrary, oci, shub, blob(s),\
    \ all (default [all])"
  type: string
  inputBinding:
    prefix: --type
- id: in_verbose
  doc: include cache entries in the output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_list
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
- singularity
- cache
- list
