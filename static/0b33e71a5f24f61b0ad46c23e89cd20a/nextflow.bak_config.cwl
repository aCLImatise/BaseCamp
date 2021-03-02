class: CommandLineTool
id: nextflow.bak_config.cwl
inputs:
- id: in_flat
  doc: "Print config using flat notation\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -flat
- id: in_profile
  doc: Choose a configuration profile
  type: boolean?
  inputBinding:
    prefix: -profile
- id: in_properties
  doc: "Prints config using Java properties notation\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -properties
- id: in_show_profiles
  doc: "Show all configuration profiles\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -show-profiles
- id: in_sort
  doc: "Sort config attributes\nDefault: false\n"
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_config
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- config
