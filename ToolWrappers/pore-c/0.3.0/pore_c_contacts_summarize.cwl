class: CommandLineTool
id: pore_c_contacts_summarize.cwl
inputs:
- id: in_user_metadata
  doc: "Add additional user metadata to the summary table,\nmust be a dictionary in\
    \ json format"
  type: string?
  inputBinding:
    prefix: --user-metadata
- id: in_contact_table
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_read_summary_table
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
  dockerPull: quay.io/biocontainers/pore-c:0.3.0--py_0
cwlVersion: v1.1
baseCommand:
- pore_c
- contacts
- summarize
