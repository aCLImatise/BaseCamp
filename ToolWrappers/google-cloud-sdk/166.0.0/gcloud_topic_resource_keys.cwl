class: CommandLineTool
id: gcloud_topic_resource_keys.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- topic
- resource-keys
