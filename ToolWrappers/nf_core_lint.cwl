class: CommandLineTool
id: nf_core_lint.cwl
inputs:
- id: in_release
  doc: Execute additional checks for release-ready workflows.
  type: boolean
  inputBinding:
    prefix: --release
- id: in_pipeline_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nf-core
- lint
