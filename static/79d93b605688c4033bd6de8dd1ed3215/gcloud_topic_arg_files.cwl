class: CommandLineTool
id: gcloud_topic_arg_files.cwl
inputs:
- id: in_device_ids
  doc: ',htc_m8,g3'
  type: long
  inputBinding:
    prefix: --device-ids
- id: in_composition
  doc: 'A special include: [ARG_GROUP1, ...] syntax allows merging or composition'
  type: string
  inputBinding:
    position: 0
- id: in_nesting_dot
  doc: Precedence
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: Any argument defined directly within a group will have higher precedence
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- topic
- arg-files
