class: CommandLineTool
id: gxwf_to_native_OUTPUT.cwl
inputs:
- id: in_gx_wf_to_native
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gxformat2:0.15.0--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- gxwf-to-native
- OUTPUT
