class: CommandLineTool
id: cbTool.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_fix_dots
  doc: "for reorder and metaCat: try to fix R's mangling of various\nspecial chars\
    \ to '.' in the cell IDs"
  type: boolean?
  inputBinding:
    prefix: --fixDots
- id: in_order
  doc: "only for reorder and metaCat: new order of fields, comma-\nsep, e.g. 'disease,age'.\
    \ Do not include cellId, it's always\nthe first field by definition. Fields that\
    \ are in the file\nbut not specified here will be appended as the last\ncolumns."
  type: File?
  inputBinding:
    prefix: --order
- id: in_del
  doc: 'only for reorder and metaCat: names of fields to remove'
  type: string?
  inputBinding:
    prefix: --del
- id: in_mtx_two_tsv
  doc: '- convert matrix market to .tsv.gz'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- cbTool
