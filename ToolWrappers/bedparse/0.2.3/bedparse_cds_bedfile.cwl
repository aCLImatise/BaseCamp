class: CommandLineTool
id: bedparse_cds_bedfile.cwl
inputs:
- id: in_ignore_cds_only
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --ignoreCDSonly
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bedparse
- cds
- bedfile
