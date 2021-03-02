class: CommandLineTool
id: fragfinder.cwl
inputs:
- id: in__contains_model
  doc: ', which contains a MODEL, or'
  type: File?
  inputBinding:
    prefix: -i
- id: in_model_file
  doc: ', where file contains any model structure, or'
  type: File?
  inputBinding:
    prefix: -model_file
- id: in_track_mod
  doc: ',file2,..., for a multitrack model, or'
  type: File?
  inputBinding:
    prefix: -trackmod
- id: in_query
  doc: for a Smith and Waterman query model.
  type: File?
  inputBinding:
    prefix: -query
- id: in_model_library
  doc: ',...           or ....'
  type: File?
  inputBinding:
    prefix: -modellibrary
- id: in_db
  doc: Database to search for fragments.  Required.
  type: File?
  inputBinding:
    prefix: -db
- id: in_first_sequence
  doc: "Target single-sequence. Optional.\nif present, will be first aligned sequence"
  type: string?
  inputBinding:
    prefix: -firstsequence
- id: in_fra_glen
  doc: Fragment length [10]
  type: long?
  inputBinding:
    prefix: -fraglen
- id: in_num_per_match
  doc: '#   Number of best fragments per bin [5]'
  type: boolean?
  inputBinding:
    prefix: -numpermatch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fragfinder
