class: CommandLineTool
id: pegasusio_aggregate_matrix.cwl
inputs:
- id: in_csv_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pegasusio:0.2.10--py36h4c5857e_0
cwlVersion: v1.1
baseCommand:
- pegasusio
- aggregate_matrix
