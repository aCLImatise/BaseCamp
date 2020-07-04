class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/varda2_client_mnv.cwl
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
- id: inserted
  doc: Inserted sequence
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
- mnv
