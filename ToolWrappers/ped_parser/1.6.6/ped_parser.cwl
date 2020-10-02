class: CommandLineTool
id: ped_parser.cwl
inputs:
- id: in_family_type
  doc: "[ped|alt|cmms|mip]\nIf the analysis use one of the known setups,\nplease specify\
    \ which one. Default is ped"
  type: boolean
  inputBinding:
    prefix: --family_type
- id: in_outfile
  doc: "Specify the path to a file where results\nshould be stored."
  type: File
  inputBinding:
    prefix: --outfile
- id: in_cmms_check
  doc: "If the id is in cmms format.\n--to_json                       Print the ped\
    \ file in json format.\n--to_madeline                   Print the ped file in\
    \ madeline format.\n--to_ped                        Print the ped file in ped\
    \ format with\nheaders.\n--to_dict                       Print the ped file in\
    \ ped format with\nheaders.\n-v, --verbose                   Increase output verbosity.\n\
    --version\n-l, --logfile PATH              Path to log file. If none logging is\
    \ printed\nto stderr.\n--loglevel [DEBUG|INFO|WARNING|ERROR|CRITICAL]\nSet the\
    \ level of log output.\n--help                          Show this message and\
    \ exit.\n"
  type: File
  inputBinding:
    prefix: --cmms_check
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
- id: out_cmms_check
  doc: "If the id is in cmms format.\n--to_json                       Print the ped\
    \ file in json format.\n--to_madeline                   Print the ped file in\
    \ madeline format.\n--to_ped                        Print the ped file in ped\
    \ format with\nheaders.\n--to_dict                       Print the ped file in\
    \ ped format with\nheaders.\n-v, --verbose                   Increase output verbosity.\n\
    --version\n-l, --logfile PATH              Path to log file. If none logging is\
    \ printed\nto stderr.\n--loglevel [DEBUG|INFO|WARNING|ERROR|CRITICAL]\nSet the\
    \ level of log output.\n--help                          Show this message and\
    \ exit.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_cmms_check)
cwlVersion: v1.1
baseCommand:
- ped_parser
