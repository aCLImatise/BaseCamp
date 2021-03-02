class: CommandLineTool
id: rnabridge_denovo.cwl
inputs:
- id: in_input_read_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_input_read_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_output_bridge_sequence
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rnabridge-denovo:1.0.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- rnabridge-denovo
