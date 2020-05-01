#!/usr/bin/env cwl-runner

baseCommand:
- car-sequencing
class: CommandLineTool
cwlVersion: v1.0
id: car-sequencing
inputs:
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
