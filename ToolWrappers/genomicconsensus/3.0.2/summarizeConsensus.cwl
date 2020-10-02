class: CommandLineTool
id: summarizeConsensus.cwl
inputs:
- id: in_variants_gff
  doc: ''
  type: string
  inputBinding:
    prefix: --variantsGff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- summarizeConsensus
