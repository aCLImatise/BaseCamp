class: CommandLineTool
id: nf_core_bump_version_new version.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pipeline_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: new_version
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- bump-version
- new version
