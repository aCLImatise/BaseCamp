class: CommandLineTool
id: gcloud_topic_escaping.cwl
inputs:
- id: in_list_flag
  doc: ',value2,value3'
  type: long?
  inputBinding:
    prefix: --list-flag
- id: in_dict_flag
  doc: =value1,key2=value2
  type: long?
  inputBinding:
    prefix: --dict-flag
- id: in_addresses
  doc: ^:^123.456.789.198:22.333.146.189:789.312.645      \
  type: boolean?
  inputBinding:
    prefix: --addresses
- id: in_metadata
  doc: \
  type: boolean?
  inputBinding:
    prefix: --metadata
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- topic
- escaping
