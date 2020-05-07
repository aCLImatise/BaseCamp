class: CommandLineTool
id: nf_core_bump_version_OPTIONS_new version.cwl
inputs:
- id: pipeline_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: new_version
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- bump-version
- OPTIONS
- new version
