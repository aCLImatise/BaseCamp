#!/usr/bin/env cwl-runner

baseCommand:
- golf
class: CommandLineTool
cwlVersion: v1.0
id: golf
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
- doc: '(init,prune,fix,fail,done,propagate,commit,none,all,variable,general) default:
    none trace flags (comma-separated list)'
  id: trace
  inputBinding:
    prefix: -trace
  type: boolean
- doc: '(int) default: 9 number of weeks'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '(int) default: 8 number of groups'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '(int) default: 4 number of players per group'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
