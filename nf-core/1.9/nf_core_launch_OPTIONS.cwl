class: CommandLineTool
id: nf_core_launch_OPTIONS.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- launch
- OPTIONS
