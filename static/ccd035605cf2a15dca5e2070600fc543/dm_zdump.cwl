class: CommandLineTool
id: dm_zdump.cwl
inputs:
- id: in_h_slash_help
  doc: ': Print help.'
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_v_slash_ve_bose
  doc: ': Prints a full description of each'
  type: boolean
  inputBinding:
    prefix: -v/--vebose
- id: in_timezone_dot
  doc: '-c/--cutoff YEAR : Cut off verbose output near the'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dm_zdump
