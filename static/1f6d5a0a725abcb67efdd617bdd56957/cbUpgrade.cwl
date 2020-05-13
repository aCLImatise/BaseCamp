class: CommandLineTool
id: cbUpgrade.cwl
inputs:
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: outdir
  doc: 'output directory, default can be set through the env. variable CBOUT, current
    value: none'
  type: string
  inputBinding:
    prefix: --outDir
- id: port
  doc: after upgrade, start HTTP server bound to port and serve <outDir>
  type: string
  inputBinding:
    prefix: --port
- id: code
  doc: also update the javascript code
  type: boolean
  inputBinding:
    prefix: --code
- id: dev
  doc: 'only for developers: do not add version to js/css links'
  type: boolean
  inputBinding:
    prefix: --dev
outputs: []
cwlVersion: v1.1
baseCommand:
- cbUpgrade
