class: CommandLineTool
id: ebisearch_get_domains.cwl
inputs:
- id: in_file
  doc: File to export the domain information (optional)
  type: File?
  inputBinding:
    prefix: --file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ebisearch
- get_domains
