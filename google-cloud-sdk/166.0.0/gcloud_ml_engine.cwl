class: CommandLineTool
id: ../../../gcloud_ml_engine.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- ml-engine
