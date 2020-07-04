class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fragfinder.cwl
inputs:
- id: track_mod
  doc: ',file2,...         or ....'
  type: File
  inputBinding:
    prefix: -trackmod
- id: model_library
  doc: ',...           or ....'
  type: File
  inputBinding:
    prefix: -modellibrary
- id: db
  doc: 'Database to search for fragments.  Required. '
  type: string
  inputBinding:
    prefix: -db
- id: first_sequence
  doc: Target single-sequence. Optional.  if present, will be first aligned sequence
  type: string
  inputBinding:
    prefix: -firstsequence
- id: fra_glen
  doc: Fragment length [10]
  type: long
  inputBinding:
    prefix: -fraglen
- id: num_per_match
  doc: '#   Number of best fragments per bin [5]'
  type: boolean
  inputBinding:
    prefix: -numpermatch
outputs: []
cwlVersion: v1.1
baseCommand:
- fragfinder
