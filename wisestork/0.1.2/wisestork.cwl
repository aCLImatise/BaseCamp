#!/usr/bin/env cwl-runner

baseCommand:
- wisestork
class: CommandLineTool
cwlVersion: v1.0
id: wisestork
inputs:
- doc: ': count coverage per bin'
  id: count
  inputBinding:
    prefix: '- count'
  type: boolean
- doc: ': GC-correct bins'
  id: gc_correct
  inputBinding:
    prefix: '- gc-correct'
  type: boolean
- doc: ': calculate Z-scores'
  id: zscore
  inputBinding:
    prefix: '- zscore'
  type: boolean
- doc: ': Generate a new reference dictionary of bin similarities'
  id: new_ref
  inputBinding:
    prefix: '- newref'
  type: boolean
