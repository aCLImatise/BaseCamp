class: CommandLineTool
id: methylpy_index_allc.cwl
inputs:
- id: all_c_files
  doc: 'List of allc files to index. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allc-files
- id: num_procs
  doc: 'Number of processors to use (default: 1)'
  type: string
  inputBinding:
    prefix: --num-procs
- id: re_index
  doc: 'Boolean indicating whether to index allc files whose index files already exist.
    (default: True)'
  type: string
  inputBinding:
    prefix: --reindex
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- index-allc
