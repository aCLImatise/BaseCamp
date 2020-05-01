#!/usr/bin/env cwl-runner

baseCommand:
- msaccess
class: CommandLineTool
cwlVersion: v1.0
id: msaccess
inputs:
- doc: ''
  id: filenames
  inputBinding:
    position: 0
  type: File
- doc: '[ --filelist ] arg    : text file containing filenames to process'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --outdir ] arg (=.) : output directory'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --config ] arg      : configuration file (containing settings as  optionName=value)'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --exec ] arg        : execute command, e.g --exec "tic mz=409-412"'
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: ': add a spectrum list filter, e.g. --filter="msLevel [2,3]"'
  id: filter
  inputBinding:
    prefix: --filter
  type: string
- doc: '[ --verbose ]         : print progress messages'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
