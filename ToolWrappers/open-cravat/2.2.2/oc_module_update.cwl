class: CommandLineTool
id: oc_module_update.cwl
inputs:
- id: in_proceed_without_prompt
  doc: Proceed without prompt
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_strategy
  doc: "Dependency resolution strategy. \"consensus\" will\nattemp to resolve dependencies.\
    \ \"force\" will install\nthe highest available version. \"skip\" will skip\n\
    modules with constraints.\n"
  type: string?
  inputBinding:
    prefix: --strategy
- id: in_modules
  doc: Modules to update.
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
- oc
- module
- update
