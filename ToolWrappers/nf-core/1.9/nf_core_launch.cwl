class: CommandLineTool
id: nf_core_launch.cwl
inputs:
- id: in_params
  doc: Local parameter settings file in JSON.
  type: File
  inputBinding:
    prefix: --params
- id: in_direct
  doc: Uses given values from the parameter file directly.
  type: boolean
  inputBinding:
    prefix: --direct
- id: in_pipeline_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nf-core
- launch
