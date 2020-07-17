class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nf_core_bump_version.cwl
inputs:
- id: next_flow
  doc: Bump required nextflow version instead of pipeline version
  type: boolean
  inputBinding:
    prefix: --nextflow
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
