#!/usr/bin/env cwl-runner

baseCommand:
- cbBuild
class: CommandLineTool
cwlVersion: v1.0
id: cbbuild
inputs:
- doc: copy sample cellbrowser.conf and desc.conf to current directory
  id: in_it
  inputBinding:
    prefix: --init
  type: boolean
- doc: show debug messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: a cellbrowser.conf file that specifies labels and all input files, default
    is ./cellbrowser.conf, can be specified multiple times
  id: in_conf
  inputBinding:
    prefix: --inConf
  type: string
- doc: 'output directory, default can be set through the env. variable CBOUT or ~/.cellbrowser.conf,
    current value: none'
  id: outdir
  inputBinding:
    prefix: --outDir
  type: string
- doc: if build is successful, start an http server on this port and serve the result
    via http://localhost:port
  id: port
  inputBinding:
    prefix: --port
  type: string
- doc: run in all subdirectories of the current directory. Useful when rebuilding
    a full hierarchy.
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: "do not use cached old data. Can be: 'meta' or 'matrix' (matrix includes meta)."
  id: redo
  inputBinding:
    prefix: --redo
  type: string
