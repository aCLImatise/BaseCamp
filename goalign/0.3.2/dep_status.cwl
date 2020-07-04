class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dep_status.cwl
inputs:
- id: detail
  doc: 'include more detail in the chosen format (default: false)'
  type: boolean
  inputBinding:
    prefix: -detail
- id: dot
  doc: 'output the dependency graph in GraphViz format (default: false)'
  type: boolean
  inputBinding:
    prefix: -dot
- id: examples
  doc: 'print detailed usage examples (default: false)'
  type: boolean
  inputBinding:
    prefix: -examples
- id: output_texttemplate_format
  doc: 'output in text/template format (default: <none>)'
  type: boolean
  inputBinding:
    prefix: -f
- id: json
  doc: 'output in JSON format (default: false)'
  type: boolean
  inputBinding:
    prefix: -json
- id: lock
  doc: 'output in the lock file format (assumes -detail) (default: false)'
  type: boolean
  inputBinding:
    prefix: -lock
- id: missing
  doc: 'only show missing dependencies (default: false)'
  type: boolean
  inputBinding:
    prefix: -missing
- id: old
  doc: 'only show out-of-date dependencies (default: false)'
  type: boolean
  inputBinding:
    prefix: -old
- id: out
  doc: 'path to a file to which to write the output. Blank value will be ignored (default:
    <none>)'
  type: boolean
  inputBinding:
    prefix: -out
- id: enable_verbose_logging
  doc: 'enable verbose logging (default: false)'
  type: boolean
  inputBinding:
    prefix: -v
- id: package_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dep
- status
