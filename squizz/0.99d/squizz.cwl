#!/usr/bin/env cwl-runner

baseCommand:
- squizz
class: CommandLineTool
cwlVersion: v1.0
id: squizz
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
- doc: '... Detect alignment formats only.'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: '... Detect sequence formats only.'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '... Convert into format <fmt>.'
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: '... Assume input format <fmt>.'
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: '... List all supported formats.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '... Count and report entries number.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '... Disable strict format checks.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '... Display version information and exit.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
