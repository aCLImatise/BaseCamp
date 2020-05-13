class: CommandLineTool
id: nf_core_lint_OPTIONS_pipeline directory.cwl
inputs:
- id: release
  doc: Execute additional checks for release-ready workflows.
  type: boolean
  inputBinding:
    prefix: --release
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- lint
- OPTIONS
- pipeline directory
