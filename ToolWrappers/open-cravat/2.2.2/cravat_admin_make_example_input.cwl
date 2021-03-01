class: CommandLineTool
id: cravat_admin_make_example_input.cwl
inputs:
- id: in_directory
  doc: Directory to make the example input file in
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cravat-admin
- make-example-input
