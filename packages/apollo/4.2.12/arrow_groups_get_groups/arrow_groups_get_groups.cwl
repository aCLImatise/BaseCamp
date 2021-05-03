class: CommandLineTool
id: arrow_groups_get_groups.cwl
inputs:
- id: in_name
  doc: Only return group(s) with given name
  type: string?
  inputBinding:
    prefix: --name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- get_groups
