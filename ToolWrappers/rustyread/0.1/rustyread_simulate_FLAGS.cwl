class: CommandLineTool
id: rustyread_simulate_FLAGS.cwl
inputs:
- id: in_output
  doc: ''
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: ''
  type: File?
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rustyread:0.1--h82fb495_0
cwlVersion: v1.1
baseCommand:
- rustyread
- simulate
- FLAGS
