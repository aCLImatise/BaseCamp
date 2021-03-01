class: CommandLineTool
id: dx_jobutil_add_output_value.cwl
inputs:
- id: in_array
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --array
- id: in_class
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --class
- id: in_dx_job_util_add_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_classname
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_value
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- dx-jobutil-add-output
- value
