class: CommandLineTool
id: cva_info.cwl
inputs:
- id: in_local
  doc: Include local info
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_module
  doc: Module to get info about
  type: string
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
- cva
- info
