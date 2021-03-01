class: CommandLineTool
id: methylpy_index_allc.cwl
inputs:
- id: in_all_c_files
  doc: 'List of allc files to index. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allc-files
- id: in_num_procs
  doc: 'Number of processors to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --num-procs
- id: in_re_index
  doc: "Boolean indicating whether to index allc files whose\nindex files already\
    \ exist. (default: True)\n"
  type: boolean?
  inputBinding:
    prefix: --reindex
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- methylpy
- index-allc
