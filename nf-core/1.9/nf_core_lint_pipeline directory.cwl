class: CommandLineTool
id: nf_core_lint_pipeline directory.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pipeline_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- lint
- pipeline directory
