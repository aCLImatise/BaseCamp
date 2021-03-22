class: CommandLineTool
id: dep_status.cwl
inputs:
- id: in_detail
  doc: 'include more detail in the chosen format (default: false)'
  type: boolean?
  inputBinding:
    prefix: -detail
- id: in_dot
  doc: 'output the dependency graph in GraphViz format (default: false)'
  type: boolean?
  inputBinding:
    prefix: -dot
- id: in_examples
  doc: 'print detailed usage examples (default: false)'
  type: boolean?
  inputBinding:
    prefix: -examples
- id: in_output_texttemplate_none
  doc: 'output in text/template format (default: <none>)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_json
  doc: 'output in JSON format (default: false)'
  type: boolean?
  inputBinding:
    prefix: -json
- id: in_lock
  doc: 'output in the lock file format (assumes -detail) (default: false)'
  type: File?
  inputBinding:
    prefix: -lock
- id: in_missing
  doc: 'only show missing dependencies (default: false)'
  type: boolean?
  inputBinding:
    prefix: -missing
- id: in_old
  doc: 'only show out-of-date dependencies (default: false)'
  type: boolean?
  inputBinding:
    prefix: -old
- id: in_out
  doc: 'path to a file to which to write the output. Blank value will be ignored (default:
    <none>)'
  type: File?
  inputBinding:
    prefix: -out
- id: in_enable_verbose_default
  doc: 'enable verbose logging (default: false)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_project
  doc: Import path
  type: string
  inputBinding:
    position: 0
- id: in_constraint
  doc: Version constraint, from the manifest
  type: string
  inputBinding:
    position: 1
- id: in_version
  doc: Version chosen, from the lock
  type: string
  inputBinding:
    position: 2
- id: in_revision
  doc: VCS revision of the chosen version
  type: string
  inputBinding:
    position: 3
- id: in_latest
  doc: Latest VCS revision available
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_lock
  doc: 'output in the lock file format (assumes -detail) (default: false)'
  type: File?
  outputBinding:
    glob: $(inputs.in_lock)
- id: out_out
  doc: 'path to a file to which to write the output. Blank value will be ignored (default:
    <none>)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- dep
- status
