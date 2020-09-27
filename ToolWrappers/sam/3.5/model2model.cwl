class: CommandLineTool
id: model2model.cwl
inputs:
- id: in__contains_model
  doc: ', which contains a MODEL, or'
  type: File
  inputBinding:
    prefix: -i
- id: in_model_file
  doc: ', where file contains any model structure, or'
  type: File
  inputBinding:
    prefix: -model_file
- id: in_track_mod
  doc: ',file2,..., for a multitrack model, or'
  type: File
  inputBinding:
    prefix: -trackmod
- id: in_query
  doc: "for a Smith and Waterman query model.\n-modelfile model_file             required\n\
    [-modelguide seq_file]            guide sequence\n-db model_file [-db model_file]*\
    \     one or more modes\n[-dbguide seq_file [-db seq_file]]*     guide sequences\n\
    [-id seqid]*                      one or more sequence IDs"
  type: File
  inputBinding:
    prefix: -query
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- model2model
