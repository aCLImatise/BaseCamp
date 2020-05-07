class: CommandLineTool
id: cbBuild.cwl
inputs:
- id: in_it
  doc: copy sample cellbrowser.conf and desc.conf to current directory
  type: boolean
  inputBinding:
    prefix: --init
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_conf
  doc: a cellbrowser.conf file that specifies labels and all input files, default
    is ./cellbrowser.conf, can be specified multiple times
  type: string
  inputBinding:
    prefix: --inConf
- id: outdir
  doc: 'output directory, default can be set through the env. variable CBOUT or ~/.cellbrowser.conf,
    current value: none'
  type: string
  inputBinding:
    prefix: --outDir
- id: port
  doc: if build is successful, start an http server on this port and serve the result
    via http://localhost:port
  type: string
  inputBinding:
    prefix: --port
- id: recursive
  doc: run in all subdirectories of the current directory. Useful when rebuilding
    a full hierarchy.
  type: boolean
  inputBinding:
    prefix: --recursive
- id: redo
  doc: "do not use cached old data. Can be: 'meta' or 'matrix' (matrix includes meta)."
  type: string
  inputBinding:
    prefix: --redo
outputs: []
cwlVersion: v1.1
baseCommand:
- cbBuild
