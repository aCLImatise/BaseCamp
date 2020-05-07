class: CommandLineTool
id: dep_init.cwl
inputs:
- id: root
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tags
  doc: to semver (sorted by semver rules)
  type: string
  inputBinding:
    prefix: '- Tags'
- id: default
  doc: (es) (sorted lexicographically)
  type: string
  inputBinding:
    prefix: '- Default'
- id: non_sem_ver
  doc: (sorted lexicographically)
  type: string
  inputBinding:
    prefix: '- Non-semver'
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
- id: v
  doc: 'enable verbose logging (default: false)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- dep
- init
