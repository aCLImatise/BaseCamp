#!/usr/bin/env cwl-runner

baseCommand:
- srapath.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: srapath.2.10.3
inputs:
- doc: function to perform (resolve, names, search) default=resolve or names if protocol
    is specified
  id: function
  inputBinding:
    prefix: --function
  type: string
- doc: timeout-value for request
  id: timeout
  inputBinding:
    prefix: --timeout
  type: string
- doc: protocol (fasp; http; https; fasp,http; ..) default=https
  id: protocol
  inputBinding:
    prefix: --protocol
  type: string
- doc: version-string for cgi-calls
  id: vers
  inputBinding:
    prefix: --vers
  type: string
- doc: url to be used for cgi-calls
  id: url
  inputBinding:
    prefix: --url
  type: string
- doc: 'param to be added to cgi-call (tic=XXXXX): raw-only'
  id: param
  inputBinding:
    prefix: --param
  type: string
- doc: print the raw reply (instead of parsing it)
  id: raw
  inputBinding:
    prefix: --raw
  type: boolean
- doc: print the reply in JSON
  id: json
  inputBinding:
    prefix: --json
  type: boolean
- doc: '> <project-id>       use numeric [dbGaP] project-id in names-cgi-call'
  id: project
  inputBinding:
    prefix: --project
  type: boolean
- doc: resolve cache location along with remote when performing names function
  id: cache
  inputBinding:
    prefix: --cache
  type: boolean
- doc: 'print path of object: names function-only'
  id: path
  inputBinding:
    prefix: --path
  type: boolean
- doc: <path> to ngc file
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: <path> to permission file
  id: perm
  inputBinding:
    prefix: --perm
  type: File
- doc: location in cloud
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: <path> to cart file
  id: cart
  inputBinding:
    prefix: --cart
  type: File
- doc: disable multithreading
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: Read more options and parameters from the file.
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
