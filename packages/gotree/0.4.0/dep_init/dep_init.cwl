class: CommandLineTool
id: dep_init.cwl
inputs:
- id: in_go_path
  doc: 'search in GOPATH for dependencies (default: false)'
  type: boolean?
  inputBinding:
    prefix: -gopath
- id: in_no_examples
  doc: "don't include example in Gopkg.toml (default: false)"
  type: boolean?
  inputBinding:
    prefix: -no-examples
- id: in_skip_tools
  doc: 'skip importing configuration from other dependency managers (default: false)'
  type: boolean?
  inputBinding:
    prefix: -skip-tools
- id: in_enable_verbose_default
  doc: 'enable verbose logging (default: false)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_root
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dep
- init
