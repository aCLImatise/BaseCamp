class: CommandLineTool
id: anvi_gen_network.cwl
inputs:
- id: list_annotation_sources
  doc: List available functional annotation sources.
  type: boolean
  inputBinding:
    prefix: --list-annotation-sources
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-network
