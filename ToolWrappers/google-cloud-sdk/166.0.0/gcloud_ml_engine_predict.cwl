class: CommandLineTool
id: gcloud_ml_engine_predict.cwl
inputs:
- id: in_model
  doc: Name of the model.
  type: string
  inputBinding:
    prefix: --model
- id: in_json_instances
  doc: "Path to a local file from which instances are read. Instances are in\nJSON\
    \ format; newline delimited.\nAn example of the JSON instances file:\n{\"images\"\
    : [0.0, ..., 0.1], \"key\": 3}\n{\"images\": [0.0, ..., 0.1], \"key\": 2}\n...\n\
    This flag accepts \"-\" for stdin."
  type: File
  inputBinding:
    prefix: --json-instances
- id: in_text_instances
  doc: "Path to a local file from which instances are read. Instances are in\nUTF-8\
    \ encoded text format; newline delimited.\nAn example of the text instances file:\n\
    107,4.9,2.5,4.5,1.7\n100,5.7,2.8,4.1,1.3\n...\nThis flag accepts \"-\" for stdin."
  type: File
  inputBinding:
    prefix: --text-instances
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- ml-engine
- predict
