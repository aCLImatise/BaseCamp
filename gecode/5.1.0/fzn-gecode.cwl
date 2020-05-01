#!/usr/bin/env cwl-runner

baseCommand:
- fzn-gecode
class: CommandLineTool
cwlVersion: v1.0
id: fzn-gecode
inputs:
- doc: 'version: 1.6'
  id: supported
  inputBinding:
    prefix: '- Supported'
  type: string
- doc: ': 5.1.0'
  id: version
  inputBinding:
    prefix: '- Version'
  type: boolean
- doc: ': BoolVar IntVar SetVar FloatVar '
  id: variable
  inputBinding:
    prefix: '- Variable'
  type: string
- doc: 'transcendental float constraints: disabled'
  id: trigonometric
  inputBinding:
    prefix: '- Trigonometric'
  type: string
- doc: ': enabled (8 processing units)'
  id: thread
  inputBinding:
    prefix: '- Thread'
  type: string
- doc: ': disabled'
  id: gist
  inputBinding:
    prefix: '- Gist'
  type: string
- doc: '(solution, stat, gist) default: solution how to execute script'
  id: mode
  inputBinding:
    prefix: -mode
  type: boolean
- doc: '(optional: false, 0, true, 1) default: false emit statistics'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '(string) default: NONE file to send output to'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
