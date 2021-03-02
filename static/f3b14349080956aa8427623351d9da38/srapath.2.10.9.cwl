class: CommandLineTool
id: srapath.2.10.9.cwl
inputs:
- id: in_function
  doc: "function to perform (resolve, names,\nsearch) default=resolve or names if\n\
    protocol is specified"
  type: string?
  inputBinding:
    prefix: --function
- id: in_timeout
  doc: timeout-value for request
  type: string?
  inputBinding:
    prefix: --timeout
- id: in_protocol
  doc: "protocol (fasp; http; https; fasp,http;\n..) default=https"
  type: string?
  inputBinding:
    prefix: --protocol
- id: in_vers
  doc: version-string for cgi-calls
  type: string?
  inputBinding:
    prefix: --vers
- id: in_url
  doc: url to be used for cgi-calls
  type: string?
  inputBinding:
    prefix: --url
- id: in_param
  doc: 'param to be added to cgi-call (tic=XXXXX):'
  type: string?
  inputBinding:
    prefix: --param
- id: in_json
  doc: print the reply in JSON
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_project
  doc: '> <project-id>       use numeric [dbGaP] project-id in'
  type: boolean?
  inputBinding:
    prefix: --project
- id: in_path
  doc: 'print path of object: names function-only'
  type: boolean?
  inputBinding:
    prefix: --path
- id: in_ngc
  doc: <path> to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_perm
  doc: <path> to permission file
  type: File?
  inputBinding:
    prefix: --perm
- id: in_location
  doc: location in cloud
  type: string?
  inputBinding:
    prefix: --location
- id: in_cart
  doc: <path> to cart file
  type: File?
  inputBinding:
    prefix: --cart
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean?
  inputBinding:
    prefix: --disable-multithreading
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for\nmore verbosity."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_level
  doc: "Logging level as number or enum string.\nOne of\n(fatal|sys|int|err|warn|info|debug)\
    \ or\n(0-6) Current/default is warn"
  type: long?
  inputBinding:
    prefix: --log-level
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_raw_only
  doc: -r|--raw                         print the raw reply (instead of parsing it)
  type: string
  inputBinding:
    position: 0
- id: in_names_cgi_call
  doc: -c|--cache                       resolve cache location along with remote
  type: string
  inputBinding:
    position: 1
- id: in_file_dot
  doc: -h|--help                        print this message
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0
cwlVersion: v1.1
baseCommand:
- srapath.2.10.9
