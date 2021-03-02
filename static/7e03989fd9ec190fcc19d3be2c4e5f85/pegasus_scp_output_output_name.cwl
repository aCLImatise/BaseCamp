class: CommandLineTool
id: pegasus_scp_output_output_name.cwl
inputs:
- id: in_round_to
  doc: ''
  type: string?
  inputBinding:
    prefix: --round-to
- id: in_dense
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --dense
- id: in_pegasus
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_scp_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_data_file
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
  dockerPull: quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- pegasus
- scp_output
- output_name
