class: CommandLineTool
id: ../../../sarscov2formatter.cwl
inputs:
- id: alignment
  doc: Mulitple sequence alignment file
  type: string
  inputBinding:
    prefix: --alignment
- id: metadata
  doc: Metadata source (Use "ncbi" if using NCBI SARS-CoV-2 data, otherwise supply
    tabular file of the correct format)
  type: string
  inputBinding:
    prefix: --metadata
outputs: []
cwlVersion: v1.1
baseCommand:
- sarscov2formatter
