class: CommandLineTool
id: summary_get_organelle_output.py_output.cwl
inputs:
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_summary_get_organelle_output_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list_of_folders
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
  dockerPull: quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- summary_get_organelle_output.py
- output
