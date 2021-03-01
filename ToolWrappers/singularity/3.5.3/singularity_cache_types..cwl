class: CommandLineTool
id: singularity_cache_types..cwl
inputs:
- id: in_clean
  doc: Clean your local Singularity cache
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List your local Singularity cache
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singularity
- cache
- types.
