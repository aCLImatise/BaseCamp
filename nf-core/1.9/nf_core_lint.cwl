class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nf_core_lint.cwl
inputs:
- id: release
  doc: Execute additional checks for release-ready workflows.
  type: boolean
  inputBinding:
    prefix: --release
- id: pipeline_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- lint
