class: CommandLineTool
id: gcloud_topic_resource_keys.cwl
inputs:
- id: in_foo
  doc: foo.bar
  type: string
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
- resource-keys
