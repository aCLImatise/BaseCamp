class: CommandLineTool
id: hmmscore.cwl
inputs:
- id: i
  doc: or ....
  type: string
  inputBinding:
    prefix: -i
- id: model_file
  doc: or ....
  type: string
  inputBinding:
    prefix: -modelfile
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
- id: query
  doc: '&W_query_sequence         required ....'
  type: string
  inputBinding:
    prefix: -query
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmscore
