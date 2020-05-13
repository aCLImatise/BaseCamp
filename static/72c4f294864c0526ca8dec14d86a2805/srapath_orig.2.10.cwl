class: CommandLineTool
id: srapath_orig.2.10.3.cwl
inputs:
- id: function
  doc: 'function to perform (resolve, names,  search) default=resolve or names if  protocol
    is specified '
  type: boolean
  inputBinding:
    prefix: --function
- id: location
  doc: 'location of data '
  type: boolean
  inputBinding:
    prefix: --location
- id: timeout
  doc: 'timeout-value for request '
  type: boolean
  inputBinding:
    prefix: --timeout
- id: protocol
  doc: 'protocol (fasp; http; https; fasp,http;  ...) default=https '
  type: boolean
  inputBinding:
    prefix: --protocol
- id: vers
  doc: 'version-string for cgi-calls '
  type: boolean
  inputBinding:
    prefix: --vers
- id: url
  doc: 'url to be used for cgi-calls '
  type: boolean
  inputBinding:
    prefix: --url
- id: param
  doc: 'param to be added to cgi-call (tic=XXXXX):  raw-only '
  type: boolean
  inputBinding:
    prefix: --param
- id: raw
  doc: 'print the raw reply (instead of parsing it) '
  type: boolean
  inputBinding:
    prefix: --raw
- id: json
  doc: 'print the reply in JSON '
  type: boolean
  inputBinding:
    prefix: --json
- id: project
  doc: 'use numeric [dbGaP] project-id in  names-cgi-call '
  type: boolean
  inputBinding:
    prefix: --project
- id: cache
  doc: 'resolve cache location along with remote  when performing names function '
  type: boolean
  inputBinding:
    prefix: --cache
- id: path
  doc: 'print path of object: names function-only '
  type: boolean
  inputBinding:
    prefix: --path
- id: perm
  doc: 'PATH to jwt cart file '
  type: File
  inputBinding:
    prefix: --perm
- id: ngc
  doc: 'PATH to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- srapath-orig.2.10.3
