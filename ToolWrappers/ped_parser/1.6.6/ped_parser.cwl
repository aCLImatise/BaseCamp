class: CommandLineTool
id: ped_parser.cwl
inputs:
- id: in_family_type
  doc: "[ped|alt|cmms|mip]\nIf the analysis use one of the known setups,\nplease specify\
    \ which one. Default is ped"
  type: boolean?
  inputBinding:
    prefix: --family_type
- id: in_outfile
  doc: "Specify the path to a file where results\nshould be stored."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_cmms_check
  doc: If the id is in cmms format.
  type: boolean?
  inputBinding:
    prefix: --cmms_check
- id: in_to_json
  doc: Print the ped file in json format.
  type: boolean?
  inputBinding:
    prefix: --to_json
- id: in_to_madeline
  doc: Print the ped file in madeline format.
  type: boolean?
  inputBinding:
    prefix: --to_madeline
- id: in_to_ped
  doc: Print the ped file in ped format with
  type: boolean?
  inputBinding:
    prefix: --to_ped
- id: in_loglevel
  doc: "[DEBUG|INFO|WARNING|ERROR|CRITICAL]\nSet the level of log output."
  type: boolean?
  inputBinding:
    prefix: --loglevel
- id: in_family_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ped_parser
