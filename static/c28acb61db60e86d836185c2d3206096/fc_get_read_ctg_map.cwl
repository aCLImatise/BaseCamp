class: CommandLineTool
id: fc_get_read_ctg_map.cwl
inputs:
- id: basedir
  doc: 'the base working dir of a FALCON assembly (default: ./)'
  type: string
  inputBinding:
    prefix: --basedir
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_get_read_ctg_map
