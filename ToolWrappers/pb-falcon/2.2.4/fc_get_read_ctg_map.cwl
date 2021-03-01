class: CommandLineTool
id: fc_get_read_ctg_map.cwl
inputs:
- id: in_basedir
  doc: 'the base working dir of a FALCON assembly (default: ./)'
  type: string?
  inputBinding:
    prefix: --basedir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_get_read_ctg_map
