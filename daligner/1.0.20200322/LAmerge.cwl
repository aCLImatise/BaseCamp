#!/usr/bin/env cwl-runner

baseCommand:
- LAmerge
class: CommandLineTool
cwlVersion: v1.0
id: lamerge
inputs:
- doc: ': Verbose mode, output statistics as proceed.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': sort .las by A-read,A-position pairs for map usecase off => sort .las by
    A,B-read pairs for overlap piles'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': Do any intermediate merging in directory -P.'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
