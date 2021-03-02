class: CommandLineTool
id: srapath_orig.cwl
inputs:
- id: in_function
  doc: "function to perform (resolve, names,\nsearch) default=resolve or names if\n\
    protocol is specified"
  type: boolean?
  inputBinding:
    prefix: --function
- id: in_location
  doc: location of data
  type: boolean?
  inputBinding:
    prefix: --location
- id: in_timeout
  doc: timeout-value for request
  type: boolean?
  inputBinding:
    prefix: --timeout
- id: in_protocol
  doc: "protocol (fasp; http; https; fasp,http;\n...) default=https"
  type: boolean?
  inputBinding:
    prefix: --protocol
- id: in_vers
  doc: version-string for cgi-calls
  type: boolean?
  inputBinding:
    prefix: --vers
- id: in_url
  doc: url to be used for cgi-calls
  type: boolean?
  inputBinding:
    prefix: --url
- id: in_param
  doc: 'param to be added to cgi-call (tic=XXXXX):'
  type: boolean?
  inputBinding:
    prefix: --param
- id: in_json
  doc: print the reply in JSON
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_project
  doc: use numeric [dbGaP] project-id in
  type: boolean?
  inputBinding:
    prefix: --project
- id: in_path
  doc: 'print path of object: names function-only'
  type: boolean?
  inputBinding:
    prefix: --path
- id: in_perm
  doc: PATH to jwt cart file
  type: File?
  inputBinding:
    prefix: --perm
- id: in_ngc
  doc: PATH to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_location_dot
  doc: This tool produces a path that is 'likely' to be a run, in that
  type: string
  inputBinding:
    position: 0
- id: in_raw_only
  doc: '-r|--raw                         print the raw reply (instead of parsing it) '
  type: string
  inputBinding:
    position: 0
- id: in_names_cgi_call
  doc: '-c|--cache                       resolve cache location along with remote '
  type: string
  inputBinding:
    position: 1
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'srapath-orig : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- srapath-orig
