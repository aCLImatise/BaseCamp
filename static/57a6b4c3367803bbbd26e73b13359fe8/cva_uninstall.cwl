class: CommandLineTool
id: cva_uninstall.cwl
inputs:
- id: in_yes
  doc: Proceed without prompt
  type: boolean?
  inputBinding:
    prefix: --yes
- id: in_modules
  doc: Modules to uninstall
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cva
- uninstall
