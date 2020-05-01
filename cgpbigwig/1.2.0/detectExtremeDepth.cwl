#!/usr/bin/env cwl-runner

baseCommand:
- detectExtremeDepth
class: CommandLineTool
cwlVersion: v1.0
id: detectextremedepth
inputs:
- doc: ''
  id: of
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bigwig
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 2
  type: File
- doc: ''
  id: and
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: identify
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: regions
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: outside
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: the
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: normal
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: range
  inputBinding:
    position: 9
  type: string
- doc: input file with '.tab' extension
  id: named
  inputBinding:
    prefix: '- named'
  type: string
- doc: "'chr' prefix, will test with and without the 'chr' for you."
  id: without
  inputBinding:
    prefix: '- without'
  type: boolean
- doc: "'-r' defined '.{val}' will prefix '.bed'"
  id: if
  inputBinding:
    prefix: '- if'
  type: boolean
