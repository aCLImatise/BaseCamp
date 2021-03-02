class: CommandLineTool
id: synapse_list.cwl
inputs:
- id: in_recursive
  doc: "recursively list contents of the subtree descending from\nthe given Synapse\
    \ ID"
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_long
  doc: List synapse entities in long format
  type: boolean?
  inputBinding:
    prefix: --long
- id: in_modified
  doc: List modified by and modified date
  type: boolean?
  inputBinding:
    prefix: --modified
- id: in_syn_one_two_three
  doc: Synapse ID of a project or folder
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- synapse
- list
