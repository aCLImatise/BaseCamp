class: CommandLineTool
id: nf_core_modules_lint.cwl
inputs:
- id: in_tool
  doc: or <tool/subtool>
  type: string?
  inputBinding:
    prefix: --tool
- id: in_local
  doc: Run additional lint tests for local modules
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_passed
  doc: Show passed tests
  type: boolean?
  inputBinding:
    prefix: --passed
- id: in_repository_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
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
- lint
