class: CommandLineTool
id: wisestork.cwl
inputs:
- id: count
  doc: ': count coverage per bin'
  type: boolean
  inputBinding:
    prefix: '- count'
- id: gc_correct
  doc: ': GC-correct bins'
  type: boolean
  inputBinding:
    prefix: '- gc-correct'
- id: zscore
  doc: ': calculate Z-scores'
  type: boolean
  inputBinding:
    prefix: '- zscore'
- id: new_ref
  doc: ': Generate a new reference dictionary of bin similarities'
  type: boolean
  inputBinding:
    prefix: '- newref'
outputs: []
cwlVersion: v1.1
baseCommand:
- wisestork
