class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nf_core_launch.cwl
inputs:
- id: params
  doc: Local parameter settings file in JSON.
  type: string
  inputBinding:
    prefix: --params
- id: direct
  doc: Uses given values from the parameter file directly.
  type: boolean
  inputBinding:
    prefix: --direct
- id: pipeline_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- launch
