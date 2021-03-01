class: CommandLineTool
id: GatherGeneGCLength.cwl
inputs:
- id: in_default_g
  doc: (default 4g)
  type: long?
  inputBinding:
    prefix: -m
- id: in_final_command_line
  doc: final command line before executing
  type: string?
  inputBinding:
    prefix: -v
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- GatherGeneGCLength
