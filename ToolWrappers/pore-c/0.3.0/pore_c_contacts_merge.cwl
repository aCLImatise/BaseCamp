class: CommandLineTool
id: pore_c_contacts_merge.cwl
inputs:
- id: in_fof_n
  doc: "If this flag is set then the SRC_CONTACT_TABLES is a file of\nfilenames corresponding\
    \ to the contact tables you want to merge.\nThis is workaround for when the command\
    \ line gets too long."
  type: boolean?
  inputBinding:
    prefix: --fofn
- id: in_dest_contact_table
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
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
- merge
