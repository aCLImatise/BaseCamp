class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ebisearch_get_domains.cwl
inputs:
- id: file
  doc: File to export the domain information (optional)
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- ebisearch
- get_domains
