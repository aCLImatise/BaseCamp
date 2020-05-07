class: CommandLineTool
id: chromosomer_transfer_map.cwl
inputs:
- id: map
  doc: a fragment map file
  type: string
  inputBinding:
    position: 0
- id: annotation
  doc: a file of annotated genome features
  type: string
  inputBinding:
    position: 1
- id: output
  doc: an output file of the transfered annotation
  type: string
  inputBinding:
    position: 2
- id: format
  doc: 'the format of a file of annotated features (bed, gff3 or vcf) (default: bed)'
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- transfer
- map
