class: CommandLineTool
id: ../../../varda2_client_snv.cwl
inputs:
- id: position
  doc: Locus position
  type: string
  inputBinding:
    prefix: --position
- id: inserted
  doc: Inserted base
  type: string
  inputBinding:
    prefix: --inserted
- id: reference
  doc: Chromosome to look at
  type: string
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- snv
