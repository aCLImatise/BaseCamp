class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pyensembl.cwl
inputs:
- id: overwrite
  doc: Force download and indexing even if files already exist locally
  type: boolean
  inputBinding:
    prefix: --overwrite
outputs: []
cwlVersion: v1.1
baseCommand:
- pyensembl
