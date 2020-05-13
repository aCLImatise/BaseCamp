class: CommandLineTool
id: ebisearch_get_domains_OPTIONS.cwl
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
- OPTIONS
