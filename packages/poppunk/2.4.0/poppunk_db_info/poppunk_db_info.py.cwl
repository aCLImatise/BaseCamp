class: CommandLineTool
id: poppunk_db_info.py.cwl
inputs:
- id: in_list_samples
  doc: List every sample in the database
  type: boolean?
  inputBinding:
    prefix: --list-samples
- id: in_db
  doc: Database file (.h5)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0
cwlVersion: v1.1
baseCommand:
- poppunk_db_info.py
