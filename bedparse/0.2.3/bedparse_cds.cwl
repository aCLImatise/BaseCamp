class: CommandLineTool
id: bedparse_cds.cwl
inputs:
- id: ignore_cds_only
  doc: Ignore transcripts that only consist of CDS.
  type: boolean
  inputBinding:
    prefix: --ignoreCDSonly
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- cds
