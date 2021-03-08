class: CommandLineTool
id: oc_module_ls.cwl
inputs:
- id: in_available
  doc: Include available modules
  type: boolean?
  inputBinding:
    prefix: --available
- id: in_types
  doc: Only list modules of certain types
  type: string[]
  inputBinding:
    prefix: --types
- id: in_include_hidden
  doc: Include hidden modules
  type: boolean?
  inputBinding:
    prefix: --include-hidden
- id: in_tags
  doc: Only list modules of given tag(s)
  type: string[]
  inputBinding:
    prefix: --tags
- id: in_quiet
  doc: Only list module names
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_bytes
  doc: Machine readable data sizes
  type: boolean?
  inputBinding:
    prefix: --bytes
- id: in_pattern
  doc: Regular expression for module names
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
- oc
- module
- ls
