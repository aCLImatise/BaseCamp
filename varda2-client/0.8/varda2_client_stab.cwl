class: CommandLineTool
id: ../../../varda2_client_stab.cwl
inputs:
- id: start
  doc: Start of region
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: End of region
  type: string
  inputBinding:
    prefix: --end
- id: reference
  doc: Chromosome to look at
  type: string
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- stab
