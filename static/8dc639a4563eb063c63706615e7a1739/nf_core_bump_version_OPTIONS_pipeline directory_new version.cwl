class: CommandLineTool
id: nf_core_bump_version_OPTIONS_pipeline directory_new version.cwl
inputs:
- id: next_flow
  doc: Bump required nextflow version instead of pipeline version
  type: boolean
  inputBinding:
    prefix: --nextflow
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- bump-version
- OPTIONS
- pipeline directory
- new version
