class: CommandLineTool
id: singlem_get_tree.cwl
inputs:
- id: in_debug
  doc: output debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: only output errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_full_help
  doc: display all help options
  type: boolean?
  inputBinding:
    prefix: --full_help
- id: in_single_m_packages
  doc: 'SingleM packages to use [default: use the default set]'
  type: string[]
  inputBinding:
    prefix: --singlem_packages
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singlem
- get_tree
