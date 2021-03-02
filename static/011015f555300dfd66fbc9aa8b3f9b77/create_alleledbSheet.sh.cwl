class: CommandLineTool
id: create_alleledbSheet.sh.cwl
inputs:
- id: in_interactive
  doc: before execution
  type: string?
  inputBinding:
    prefix: --interactive
- id: in_force
  doc: database
  type: string?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chewiesnake:3.0.0--1
cwlVersion: v1.1
baseCommand:
- create_alleledbSheet.sh
