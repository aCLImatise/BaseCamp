class: CommandLineTool
id: airr_tools_validate_rearrangement.cwl
inputs:
- id: in_list_airr_rearrangement
  doc: "A list of AIRR rearrangement files.\n"
  type: string[]
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- airr-tools
- validate
- rearrangement
