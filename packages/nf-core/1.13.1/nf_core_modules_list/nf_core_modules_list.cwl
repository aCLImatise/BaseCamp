class: CommandLineTool
id: nf_core_modules_list.cwl
inputs:
- id: in_json
  doc: Print as JSON to stdout
  type: boolean?
  inputBinding:
    prefix: --json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- modules
- list
