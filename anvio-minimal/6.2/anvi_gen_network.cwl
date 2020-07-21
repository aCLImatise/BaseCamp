class: CommandLineTool
id: ../../../anvi_gen_network.cwl
inputs:
- id: list_annotation_sources
  doc: List available functional annotation sources.
  type: boolean
  inputBinding:
    prefix: --list-annotation-sources
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-network
