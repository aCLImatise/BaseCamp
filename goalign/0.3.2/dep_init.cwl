class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dep_init.cwl
inputs:
- id: go_path
  doc: 'search in GOPATH for dependencies (default: false)'
  type: boolean
  inputBinding:
    prefix: -gopath
- id: no_examples
  doc: "don't include example in Gopkg.toml (default: false)"
  type: boolean
  inputBinding:
    prefix: -no-examples
- id: skip_tools
  doc: 'skip importing configuration from other dependency managers (default: false)'
  type: boolean
  inputBinding:
    prefix: -skip-tools
- id: enable_verbose_logging
  doc: 'enable verbose logging (default: false)'
  type: boolean
  inputBinding:
    prefix: -v
- id: root
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dep
- init
