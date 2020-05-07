class: CommandLineTool
id: srapath.2.10.3.cwl
inputs:
- id: function
  doc: function to perform (resolve, names, search) default=resolve or names if protocol
    is specified
  type: string
  inputBinding:
    prefix: --function
- id: timeout
  doc: timeout-value for request
  type: string
  inputBinding:
    prefix: --timeout
- id: protocol
  doc: protocol (fasp; http; https; fasp,http; ..) default=https
  type: string
  inputBinding:
    prefix: --protocol
- id: vers
  doc: version-string for cgi-calls
  type: string
  inputBinding:
    prefix: --vers
- id: url
  doc: url to be used for cgi-calls
  type: string
  inputBinding:
    prefix: --url
- id: param
  doc: 'param to be added to cgi-call (tic=XXXXX): raw-only'
  type: string
  inputBinding:
    prefix: --param
- id: raw
  doc: print the raw reply (instead of parsing it)
  type: boolean
  inputBinding:
    prefix: --raw
- id: json
  doc: print the reply in JSON
  type: boolean
  inputBinding:
    prefix: --json
- id: project
  doc: '> <project-id>       use numeric [dbGaP] project-id in names-cgi-call'
  type: boolean
  inputBinding:
    prefix: --project
- id: cache
  doc: resolve cache location along with remote when performing names function
  type: boolean
  inputBinding:
    prefix: --cache
- id: path
  doc: 'print path of object: names function-only'
  type: boolean
  inputBinding:
    prefix: --path
- id: ngc
  doc: <path> to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: perm
  doc: <path> to permission file
  type: File
  inputBinding:
    prefix: --perm
- id: location
  doc: location in cloud
  type: string
  inputBinding:
    prefix: --location
- id: cart
  doc: <path> to cart file
  type: File
  inputBinding:
    prefix: --cart
- id: disable_multithreading
  doc: disable multithreading
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: log_level
  doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  type: string
  inputBinding:
    prefix: --log-level
- id: option_file
  doc: Read more options and parameters from the file.
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- srapath.2.10.3
