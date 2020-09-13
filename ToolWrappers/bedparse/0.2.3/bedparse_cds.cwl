class: CommandLineTool
id: ../../../bedparse_cds.cwl
inputs:
- id: in_ignore_cds_only
  doc: Ignore transcripts that only consist of CDS.
  type: boolean
  inputBinding:
    prefix: --ignoreCDSonly
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- cds
