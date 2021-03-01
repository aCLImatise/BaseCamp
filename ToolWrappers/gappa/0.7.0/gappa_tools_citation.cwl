class: CommandLineTool
id: gappa_tools_citation.cwl
inputs:
- id: in_format
  doc: ":{bibtex,markdown,both}=bibtex\nOutput format for citations."
  type: string?
  inputBinding:
    prefix: --format
- id: in_all
  doc: Print all relevant citations used by commands in gappa.
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_list
  doc: List all available citation keys.
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_keys_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.0--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- tools
- citation
