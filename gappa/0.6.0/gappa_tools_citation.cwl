class: CommandLineTool
id: gappa_tools_citation.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: keys
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: format
  doc: :{bibtex,markdown,both}=bibtex Output format for citations.
  type: string
  inputBinding:
    prefix: --format
- id: all
  doc: Print all relevant citations used by commands in gappa.
  type: boolean
  inputBinding:
    prefix: --all
- id: list
  doc: List all available citation keys.
  type: boolean
  inputBinding:
    prefix: --list
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- tools
- citation
