#!/usr/bin/env cwl-runner

baseCommand:
- srapath-orig.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: srapath-orig.2.10.3
inputs:
- doc: 'function to perform (resolve, names,  search) default=resolve or names if  protocol
    is specified '
  id: function
  inputBinding:
    prefix: --function
  type: boolean
- doc: 'location of data '
  id: location
  inputBinding:
    prefix: --location
  type: boolean
- doc: 'timeout-value for request '
  id: timeout
  inputBinding:
    prefix: --timeout
  type: boolean
- doc: 'protocol (fasp; http; https; fasp,http;  ...) default=https '
  id: protocol
  inputBinding:
    prefix: --protocol
  type: boolean
- doc: 'version-string for cgi-calls '
  id: vers
  inputBinding:
    prefix: --vers
  type: boolean
- doc: 'url to be used for cgi-calls '
  id: url
  inputBinding:
    prefix: --url
  type: boolean
- doc: 'param to be added to cgi-call (tic=XXXXX):  raw-only '
  id: param
  inputBinding:
    prefix: --param
  type: boolean
- doc: 'print the raw reply (instead of parsing it) '
  id: raw
  inputBinding:
    prefix: --raw
  type: boolean
- doc: 'print the reply in JSON '
  id: json
  inputBinding:
    prefix: --json
  type: boolean
- doc: 'use numeric [dbGaP] project-id in  names-cgi-call '
  id: project
  inputBinding:
    prefix: --project
  type: boolean
- doc: 'resolve cache location along with remote  when performing names function '
  id: cache
  inputBinding:
    prefix: --cache
  type: boolean
- doc: 'print path of object: names function-only '
  id: path
  inputBinding:
    prefix: --path
  type: boolean
- doc: 'PATH to jwt cart file '
  id: perm
  inputBinding:
    prefix: --perm
  type: File
- doc: 'PATH to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
