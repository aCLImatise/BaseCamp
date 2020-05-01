#!/usr/bin/env cwl-runner

baseCommand:
- fragfinder
class: CommandLineTool
cwlVersion: v1.0
id: fragfinder
inputs:
- doc: or ....
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: or ....
  id: model_file
  inputBinding:
    prefix: -modelfile
  type: string
- doc: ',file2,...         or ....'
  id: track_mod
  inputBinding:
    prefix: -trackmod
  type: File
- doc: ',...           or ....'
  id: model_library
  inputBinding:
    prefix: -modellibrary
  type: File
- doc: 'Database to search for fragments.  Required. '
  id: db
  inputBinding:
    prefix: -db
  type: string
- doc: Target single-sequence. Optional.  if present, will be first aligned sequence
  id: first_sequence
  inputBinding:
    prefix: -firstsequence
  type: string
- doc: Fragment length [0]
  id: fra_glen
  inputBinding:
    prefix: -fraglen
  type: long
- doc: '#   Number of best fragments per bin [0]'
  id: num_per_match
  inputBinding:
    prefix: -numpermatch
  type: boolean
