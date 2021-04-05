class: CommandLineTool
id: dbkit_merge.py.cwl
inputs:
- id: in_first_index
  doc: First Index file
  type: File?
  inputBinding:
    prefix: --firstindex
- id: in_first_data
  doc: First Data file
  type: File?
  inputBinding:
    prefix: --firstdata
- id: in_second_index
  doc: Second Index file
  type: File?
  inputBinding:
    prefix: --secondindex
- id: in_second_data
  doc: Second Data file
  type: File?
  inputBinding:
    prefix: --seconddata
- id: in_output_index
  doc: Output Index file
  type: File?
  inputBinding:
    prefix: --outputindex
- id: in_output_database
  doc: Output Data file
  type: File?
  inputBinding:
    prefix: --outputdatabase
- id: in_log
  doc: Log file
  type: File?
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_index
  doc: Output Index file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_index)
- id: out_output_database
  doc: Output Data file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_database)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ffindex-dbkit:0.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- dbkit_merge.py
