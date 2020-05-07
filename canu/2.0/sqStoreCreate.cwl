class: CommandLineTool
id: sqStoreCreate.cwl
inputs:
- id: technology_status
  doc: 'seqFile1 [seqFile2] [...] '
  type: string
  inputBinding:
    prefix: -technology-status
outputs: []
cwlVersion: v1.1
baseCommand:
- sqStoreCreate
