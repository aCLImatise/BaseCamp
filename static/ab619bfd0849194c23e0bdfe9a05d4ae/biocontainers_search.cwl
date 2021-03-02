class: CommandLineTool
id: biocontainers_search.cwl
inputs:
- id: in_search_term
  doc: Search term
  type: string?
  inputBinding:
    prefix: --search_term
- id: in_json
  doc: Print json format
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_show_images
  doc: Show all available images
  type: boolean?
  inputBinding:
    prefix: --show_images
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biocontainers-search
