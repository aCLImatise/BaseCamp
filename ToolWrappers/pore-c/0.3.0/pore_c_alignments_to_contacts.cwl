class: CommandLineTool
id: pore_c_alignments_to_contacts.cwl
inputs:
- id: in_pore_c_table
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_contact_table
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
- alignments
- to-contacts
