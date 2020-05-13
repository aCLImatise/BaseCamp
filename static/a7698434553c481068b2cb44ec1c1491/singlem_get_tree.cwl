class: CommandLineTool
id: singlem_get_tree.cwl
inputs:
- id: debug
  doc: output debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: only output errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: full_help
  doc: display all help options
  type: boolean
  inputBinding:
    prefix: --full_help
- id: single_m_packages
  doc: 'SingleM packages to use [default: use the default set]'
  type: string[]
  inputBinding:
    prefix: --singlem_packages
outputs: []
cwlVersion: v1.1
baseCommand:
- singlem
- get_tree
