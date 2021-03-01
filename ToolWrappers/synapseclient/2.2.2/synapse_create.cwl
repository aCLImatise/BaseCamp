class: CommandLineTool
id: synapse_create.cwl
inputs:
- id: in_parentid
  doc: "Synapse ID of project or folder where to place folder\n[not used with project]"
  type: long?
  inputBinding:
    prefix: --parentid
- id: in_name
  doc: Name of folder/project.
  type: Directory?
  inputBinding:
    prefix: --name
- id: in_description
  doc: Description of project/folder
  type: Directory?
  inputBinding:
    prefix: --description
- id: in_description_file
  doc: "Path to a markdown file containing description of\nproject/folder\n"
  type: File?
  inputBinding:
    prefix: --descriptionFile
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
- create
