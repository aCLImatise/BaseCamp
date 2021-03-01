class: CommandLineTool
id: airr_tools_validate_repertoire.cwl
inputs:
- id: in_list_airr_repertoire
  doc: "A list of AIRR repertoire metadata files.\n"
  type: string[]
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/airr:1.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- airr-tools
- validate
- repertoire
