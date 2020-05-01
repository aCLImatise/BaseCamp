#!/usr/bin/env cwl-runner

baseCommand:
- LAsort
class: CommandLineTool
cwlVersion: v1.0
id: lasort
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
