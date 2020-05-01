#!/usr/bin/env cwl-runner

baseCommand:
- cbUpgrade
class: CommandLineTool
cwlVersion: v1.0
id: cbupgrade
inputs:
- doc: show debug messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'output directory, default can be set through the env. variable CBOUT, current
    value: none'
  id: outdir
  inputBinding:
    prefix: --outDir
  type: string
- doc: after upgrade, start HTTP server bound to port and serve <outDir>
  id: port
  inputBinding:
    prefix: --port
  type: string
- doc: also update the javascript code
  id: code
  inputBinding:
    prefix: --code
  type: boolean
- doc: 'only for developers: do not add version to js/css links'
  id: dev
  inputBinding:
    prefix: --dev
  type: boolean
