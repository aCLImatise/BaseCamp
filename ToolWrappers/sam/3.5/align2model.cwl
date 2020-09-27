class: CommandLineTool
id: align2model.cwl
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
    -db seq_file [-db seq_filen]*     one or more sequence files\n[-id seqid]*   \
    \                   one or more sequence IDs\n[-pptrim <value>]*             \
    \   create .ta2m trimmed alignment"
  type: File
  inputBinding:
    prefix: -query
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- align2model
