class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ncbi_database_fetcher.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- ncbi_database_fetcher.sh
