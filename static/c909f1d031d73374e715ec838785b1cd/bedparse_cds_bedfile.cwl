class: CommandLineTool
id: bedparse_cds_bedfile.cwl
inputs:
- id: ignore_cds_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ignoreCDSonly
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- cds
- bedfile
